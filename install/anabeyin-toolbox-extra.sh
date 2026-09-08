#!/usr/bin/env bash
set -uo pipefail

TOOLBOX="/opt/anabeyin-toolbox"
LOG="/var/log/anabeyin-toolbox-extra.log"
FAIL="$TOOLBOX/KURULAMAYANLAR-EK.txt"
SECRETS="/etc/anabeyin-secrets/ai.env"

say(){ printf '\n[%s] %s\n' "$(date '+%F %T')" "$*"; }
fail(){ mkdir -p "$TOOLBOX"; printf '%s\n' "$*" >> "$FAIL"; }
need_root(){ [ "$(id -u)" -eq 0 ] || { echo "root yetkisi gerekli"; exit 1; }; }

need_root
mkdir -p "$TOOLBOX" "$TOOLBOX/bin" "$TOOLBOX/web" "$TOOLBOX/python" "$TOOLBOX/models" "$TOOLBOX/kimi" "$TOOLBOX/monitoring" "$TOOLBOX/security"
: > "$FAIL"
exec >>"$LOG" 2>&1

say "EK ARAÇ KURULUMU BAŞLADI"
echo "K3 KOTA KORUMASI: Bu betik kimi komutunu ÇAĞIRMAZ, Kimi K3 modeline istek GÖNDERMEZ."
echo "anabeyin-kimi-keeper servisine dokunulmaz; durdurulmaz ve yeniden başlatılmaz."
echo "Canlı site /var/www/anabeyin içine yazılmaz."
echo "Sunucu yeniden başlatılmaz."

cat > "$TOOLBOX/KIMI_K3_KOTA_KORUMA.txt" <<'EOF'
AnaBeyin araç hazırlığı sırasında Kimi/K3 model çağrısı yasaktır.
Kurulum yalnız paket yöneticileri, Docker, GitHub indirmeleri ve yerel dosya hazırlığı kullanır.
anabeyin-kimi-keeper servisi bu kurulum tarafından durdurulmaz veya yeniden başlatılmaz.
Kimi Skills/Ajan/MCP/Hook dosyaları model çağrısı yapmadan hazırlanır.
K3 yalnız kullanıcı daha sonra açıkça site geliştirme aşamasını başlattığında kullanılacaktır.
EOF
chmod 600 "$TOOLBOX/KIMI_K3_KOTA_KORUMA.txt"

export DEBIAN_FRONTEND=noninteractive
apt-get update -qq || true
for p in httpie glances libnginx-mod-http-modsecurity; do
  if dpkg -s "$p" >/dev/null 2>&1; then
    echo "[VAR] $p"
  else
    echo "[KUR] $p"
    apt-get install -y --no-install-recommends "$p" >/dev/null 2>&1 || fail "apt:$p"
  fi
done

say "k6 hazırlanıyor"
if ! command -v k6 >/dev/null 2>&1; then
  install -d -m 0755 /etc/apt/keyrings
  curl -fsSL https://dl.k6.io/key.gpg | gpg --dearmor -o /etc/apt/keyrings/k6-archive-keyring.gpg 2>/dev/null || true
  echo "deb [signed-by=/etc/apt/keyrings/k6-archive-keyring.gpg] https://dl.k6.io/deb stable main" > /etc/apt/sources.list.d/k6.list
  apt-get update -qq || true
  apt-get install -y k6 >/dev/null 2>&1 || fail "k6"
fi

say "Hadolint hazırlanıyor"
if ! command -v hadolint >/dev/null 2>&1; then
  case "$(uname -m)" in
    x86_64) HADO_ARCH="x86_64";;
    aarch64|arm64) HADO_ARCH="arm64";;
    *) HADO_ARCH="";;
  esac
  if [ -n "$HADO_ARCH" ]; then
    curl -fsSL "https://github.com/hadolint/hadolint/releases/latest/download/hadolint-Linux-$HADO_ARCH" -o /usr/local/bin/hadolint 2>/dev/null && chmod 755 /usr/local/bin/hadolint || fail "hadolint"
  else
    fail "hadolint:islemci"
  fi
fi

say "Cloudflare komut aracı hazırlanıyor"
if ! command -v cloudflared >/dev/null 2>&1; then
  case "$(uname -m)" in
    x86_64) CF_DEB="cloudflared-linux-amd64.deb";;
    aarch64|arm64) CF_DEB="cloudflared-linux-arm64.deb";;
    *) CF_DEB="";;
  esac
  if [ -n "$CF_DEB" ]; then
    TMP_CF="$(mktemp -d)"
    curl -fsSL "https://github.com/cloudflare/cloudflared/releases/latest/download/$CF_DEB" -o "$TMP_CF/cloudflared.deb" 2>/dev/null && dpkg -i "$TMP_CF/cloudflared.deb" >/dev/null 2>&1 || fail "cloudflared"
    rm -rf "$TMP_CF"
  else
    fail "cloudflared:islemci"
  fi
fi

say "Node ek araçları hazırlanıyor"
export PATH="$TOOLBOX/node/bin:$TOOLBOX/npm-global/bin:$TOOLBOX/bin:$PATH"
if command -v npm >/dev/null 2>&1; then
  npm config set prefix "$TOOLBOX/npm-global" >/dev/null 2>&1 || true
  npm install -g renovate >/dev/null 2>&1 || fail "npm:renovate"
fi
if command -v pnpm >/dev/null 2>&1 && [ -d "$TOOLBOX/web" ]; then
  cd "$TOOLBOX/web"
  pnpm add sharp @radix-ui/react-dialog @radix-ui/react-dropdown-menu @radix-ui/react-tooltip @radix-ui/react-tabs @radix-ui/react-avatar @radix-ui/react-scroll-area @radix-ui/react-slot >/dev/null 2>&1 || fail "pnpm:sharp-radix"
fi

say "Python ek araçları hazırlanıyor"
PYENV="$TOOLBOX/python/venv"
if [ -x "$PYENV/bin/python" ]; then
  for p in google-re2 pytesseract pdfid; do
    "$PYENV/bin/python" -m pip install --no-cache-dir "$p" >/dev/null 2>&1 || fail "python:$p"
  done
fi

say "OmniRoute yerel servis kabı hazırlanıyor"
if command -v docker >/dev/null 2>&1; then
  docker volume create anabeyin-omniroute-data >/dev/null 2>&1 || true
  if ! docker ps -a --format '{{.Names}}' | grep -qx 'anabeyin-omniroute'; then
    docker run -d \
      --name anabeyin-omniroute \
      --restart unless-stopped \
      --stop-timeout 40 \
      -p 127.0.0.1:20128:20128 \
      -v anabeyin-omniroute-data:/app/data \
      diegosouzapw/omniroute:latest >/dev/null 2>&1 || fail "omniroute:konteyner"
  else
    docker start anabeyin-omniroute >/dev/null 2>&1 || true
  fi
fi

say "OpenCode ücretsiz model listesi hazırlanıyor - Kimi kullanılmıyor"
if [ -x "$TOOLBOX/npm-global/bin/opencode" ]; then
  timeout 90 "$TOOLBOX/npm-global/bin/opencode" models > "$TOOLBOX/models/opencode-models.txt" 2>&1 || fail "opencode:model-listesi"
fi

say "Anahtar dosyası izin kontrolü"
if [ -f "$SECRETS" ]; then
  chmod 600 "$SECRETS"
else
  fail "anahtar-dosyasi:yok"
fi

cat > "$TOOLBOX/models/AGIR_MODELLER_SONRA.txt" <<'EOF'
Bu VPS yaklaşık 4 GB RAM'e sahiptir. Llama Guard, Whisper, CLIP, SigLIP, büyük Qwen/GLM/DeepSeek/Nemotron/Mistral/Meta/GPT-OSS modellerinin ağırlıkları bu hazırlık aşamasında indirilmez.
Araçlar ve çalışma ortamları kurulur; model ağırlıkları gerçek kullanım ihtiyacına göre ve Kimi K3 kotası kullanılmadan daha sonra seçilir.
Ollama kuruludur ancak ağır model indirme yapılmaz.
NVIDIA NIM yerel GPU kabı bu VPS'te GPU doğrulanmadan başlatılmaz; NGC aracı ve anahtar bağlantı noktaları hazır tutulur.
EOF

say "Durum özeti"
{
  echo "Tarih: $(date -Is)"
  echo "Kimi/K3 çağrısı: YAPILMADI"
  echo "AnaBeyin canlı servis yeniden başlatma: YAPILMADI"
  echo "Sunucu yeniden başlatma: YAPILMADI"
  echo
  for x in cloudflared k6 hadolint http renovate glances opencode docker; do
    printf '%-16s : ' "$x"
    command -v "$x" 2>/dev/null || command -v "$TOOLBOX/npm-global/bin/$x" 2>/dev/null || echo "BULUNAMADI"
  done
  echo
  echo "OmniRoute:"
  docker ps --filter name=anabeyin-omniroute --format '{{.Names}} | {{.Status}} | {{.Ports}}' 2>/dev/null || true
  echo
  echo "Eksikler:"
  if [ -s "$FAIL" ]; then sort -u "$FAIL"; else echo "YOK"; fi
} > "$TOOLBOX/EK-KURULUM-SONUCU.txt" 2>&1

say "EK ARAÇ KURULUMU BİTTİ"
echo "Rapor: $TOOLBOX/EK-KURULUM-SONUCU.txt"
echo "K3 kotası bu kurulum tarafından kullanılmadı."
