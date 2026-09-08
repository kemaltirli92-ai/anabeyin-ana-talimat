#!/usr/bin/env bash
set -uo pipefail

TOOLBOX="/opt/anabeyin-toolbox"
LOG="/var/log/anabeyin-toolbox-supplement.log"
FAIL="$TOOLBOX/KURULAMAYANLAR-TAMAMLAYICI.txt"

say(){ printf '\n[%s] %s\n' "$(date '+%F %T')" "$*"; }
fail(){ mkdir -p "$TOOLBOX"; printf '%s\n' "$*" >> "$FAIL"; }
retry(){
  local n=0 max=3 delay=30
  until "$@"; do
    n=$((n+1))
    [ "$n" -ge "$max" ] && return 1
    sleep "$delay"
  done
}

[ "$(id -u)" -eq 0 ] || exit 1
mkdir -p "$TOOLBOX" "$TOOLBOX/bin" "$TOOLBOX/security" "$TOOLBOX/database"
: > "$FAIL"
exec >>"$LOG" 2>&1

say "521 tamamlayıcı kurulum başladı"
echo "Kimi/K3 çağrısı YOK. Canlı AnaBeyin dosyalarına yazma YOK. Otomatik yeniden başlatma YOK."

export DEBIAN_FRONTEND=noninteractive

say "uv hazırlanıyor"
if ! command -v uv >/dev/null 2>&1 && [ ! -x "$TOOLBOX/bin/uv" ]; then
  retry bash -c 'curl -LsSf https://astral.sh/uv/install.sh | env UV_INSTALL_DIR=/opt/anabeyin-toolbox/bin UV_NO_MODIFY_PATH=1 sh' || fail "uv"
fi

say "Corepack hazırlanıyor"
export PATH="$TOOLBOX/node/bin:$TOOLBOX/npm-global/bin:$TOOLBOX/bin:$PATH"
if ! command -v corepack >/dev/null 2>&1 && command -v npm >/dev/null 2>&1; then
  npm config set prefix "$TOOLBOX/npm-global" >/dev/null 2>&1 || true
  retry npm install -g corepack >/dev/null 2>&1 || fail "corepack"
fi

say "CrowdSec güvenlik motoru hazırlanıyor"
if ! command -v crowdsec >/dev/null 2>&1 && ! command -v cscli >/dev/null 2>&1; then
  if retry bash -c 'curl -s https://install.crowdsec.net | sh'; then
    apt-get update -qq || true
    retry apt-get install -y --no-install-recommends crowdsec >/dev/null 2>&1 || fail "crowdsec"
  else
    fail "crowdsec-depo"
  fi
fi
# CrowdSec birincil olacak; fail2ban yedek olarak kapalı tutulur.
systemctl disable --now fail2ban >/dev/null 2>&1 || true
# CrowdSec kurulmuşsa etkin olabilir; canlı web/SSH kararlarını körlemesine değiştirecek ek bouncer bu aşamada kurulmaz.
if command -v cscli >/dev/null 2>&1; then
  systemctl enable --now crowdsec >/dev/null 2>&1 || fail "crowdsec-servis"
fi

say "pgvector hazırlanıyor"
if command -v pg_config >/dev/null 2>&1; then
  PG_MAJOR="$(pg_config --version 2>/dev/null | awk '{print $2}' | cut -d. -f1)"
else
  PG_MAJOR=""
fi

VECTOR_OK=0
if [ -n "$PG_MAJOR" ]; then
  if dpkg -s "postgresql-${PG_MAJOR}-pgvector" >/dev/null 2>&1; then
    VECTOR_OK=1
  elif apt-cache show "postgresql-${PG_MAJOR}-pgvector" >/dev/null 2>&1; then
    apt-get install -y --no-install-recommends "postgresql-${PG_MAJOR}-pgvector" >/dev/null 2>&1 && VECTOR_OK=1
  fi
fi

if [ "$VECTOR_OK" -eq 0 ] && command -v pg_config >/dev/null 2>&1; then
  say "pgvector paket bulunamadı; kaynak koddan kuruluyor"
  TMPV="$(mktemp -d)"
  if retry git clone -q --depth 1 --branch v0.8.6 https://github.com/pgvector/pgvector.git "$TMPV/pgvector"; then
    if make -C "$TMPV/pgvector" -s && make -C "$TMPV/pgvector" -s install; then
      VECTOR_OK=1
    else
      fail "pgvector-derleme"
    fi
  else
    fail "pgvector-indirme"
  fi
  rm -rf "$TMPV"
fi
[ "$VECTOR_OK" -eq 1 ] || fail "pgvector"
# PostgreSQL bu hazırlık aşamasında canlı AnaBeyin'e bağlanmaz ve dışarı açılmaz.
systemctl disable --now postgresql >/dev/null 2>&1 || true

say "PDF yardımcıları tamamlanıyor"
PYENV="$TOOLBOX/python/venv"
if [ -x "$PYENV/bin/python" ]; then
  "$PYENV/bin/python" -m pip install --no-cache-dir pypdf >/dev/null 2>&1 || fail "python:pypdf"
fi

say "Temel doğrulama"
{
  echo "Tarih: $(date -Is)"
  echo "Kimi/K3 çağrısı: YAPILMADI"
  for x in uv corepack cscli crowdsec pg_config; do
    printf '%-16s : ' "$x"
    command -v "$x" 2>/dev/null || command -v "$TOOLBOX/bin/$x" 2>/dev/null || command -v "$TOOLBOX/npm-global/bin/$x" 2>/dev/null || echo "BULUNAMADI"
  done
  echo "pgvector dosyaları:"
  if command -v pg_config >/dev/null 2>&1; then
    ls "$(pg_config --pkglibdir)"/vector.so 2>/dev/null || true
    ls "$(pg_config --sharedir)"/extension/vector.control 2>/dev/null || true
  fi
  echo "Eksikler:"
  if [ -s "$FAIL" ]; then sort -u "$FAIL"; else echo "YOK"; fi
} > "$TOOLBOX/TAMAMLAYICI-KURULUM-SONUCU.txt" 2>&1

say "521 tamamlayıcı kurulum bitti"
