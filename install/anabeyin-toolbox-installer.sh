#!/usr/bin/env bash
set -uo pipefail

TOOLBOX="/opt/anabeyin-toolbox"
SECRETS="/etc/anabeyin-secrets"
SELF="/root/anabeyin-toolbox-installer.sh"
LOG="/var/log/anabeyin-toolbox-install.log"
FAIL="$TOOLBOX/KURULAMAYANLAR.txt"
REPORT="$TOOLBOX/KURULUM-SONUCU.txt"
BACKUP_DIR="/root/anabeyin-toolbox-backups"
REPO_URL="https://github.com/kemaltirli92-ai/anabeyin-ana-talimat.git"

say(){ printf '\n[%s] %s\n' "$(date '+%F %T')" "$*"; }
fail(){ mkdir -p "$TOOLBOX"; printf '%s\n' "$*" >> "$FAIL"; }
need_root(){ [ "$(id -u)" -eq 0 ] || { echo "Bu kurucu root yetkisi ister."; exit 1; }; }
free_gb(){ df --output=avail -BG / | tail -1 | tr -dc '0-9'; }

save_secrets(){
  need_root
  echo "============================================================"
  echo " ANABEYIN - GIZLI ANAHTAR KAYDI"
  echo " Yazdigin karakterler ekranda GORUNECEK."
  echo " Anahtarlari GitHub'a koymayacagiz."
  echo " Bu ekranda ekran goruntusu alma."
  echo "============================================================"
  echo
  read -r -p "NVIDIA NGC anahtarini yapistir, Enter: " NGC_KEY
  read -r -p "OpenRouter anahtarini yapistir, Enter: " OR_KEY
  read -r -p "Hugging Face anahtarini yapistir, Enter: " HF_KEY
  if [ -z "$NGC_KEY" ] || [ -z "$OR_KEY" ] || [ -z "$HF_KEY" ]; then
    echo "HATA: Anahtarlardan biri bos. Kurulum baslatilmadi."
    exit 2
  fi
  install -d -m 700 "$SECRETS"
  umask 077
  {
    printf 'NGC_API_KEY=%s\n' "$NGC_KEY"
    printf 'OPENROUTER_API_KEY=%s\n' "$OR_KEY"
    printf 'HF_TOKEN=%s\n' "$HF_KEY"
    printf 'HUGGINGFACE_HUB_TOKEN=%s\n' "$HF_KEY"
    printf '# NVIDIA Build/NIM barindirilmis API anahtari NGC anahtarindan ayri ise daha sonra NVIDIA_API_KEY olarak eklenecek.\n'
  } > "$SECRETS/ai.env"
  chmod 600 "$SECRETS/ai.env"
  unset NGC_KEY OR_KEY HF_KEY
  echo
  echo "Anahtarlar kaydedildi: $SECRETS/ai.env"
  echo "Dosyayi yalniz root okuyabilir."
}

make_backup(){
  mkdir -p "$BACKUP_DIR"
  local ts out
  ts="$(date +%Y%m%d-%H%M%S)"
  out="$BACKUP_DIR/anabeyin-oncesi-$ts.tar.gz"
  say "Mevcut AnaBeyin dosyalari ve servis ayarlari yedekleniyor"
  tar -czf "$out" \
    /var/www/anabeyin \
    /etc/nginx \
    /etc/systemd/system/anabeyin-core.service \
    /etc/systemd/system/anabeyin-kimi-keeper.service \
    2>/dev/null || fail "yedek:kismi-hata"
  echo "$out" > "$TOOLBOX/SON-YEDEK.txt"
  echo "Yedek: $out"
}

apt_one(){
  local p="$1"
  if dpkg -s "$p" >/dev/null 2>&1; then
    echo "[VAR] $p"
    return 0
  fi
  echo "[KUR] $p"
  apt-get install -y --no-install-recommends "$p" >/dev/null 2>&1 || { echo "[ATLANDI] $p"; fail "apt:$p"; }
}

install_node24(){
  local dest="$TOOLBOX/node" arch file tmp
  [ -x "$dest/bin/node" ] && return 0
  case "$(uname -m)" in
    x86_64) arch=x64;;
    aarch64|arm64) arch=arm64;;
    *) fail "node24:desteklenmeyen-islemci"; return 0;;
  esac
  say "Node.js 24 yalitilmis olarak kuruluyor"
  file="$(curl -fsSL https://nodejs.org/dist/latest-v24.x/SHASUMS256.txt 2>/dev/null | awk -v a="$arch" '$2 ~ ("linux-" a "\\.tar\\.xz$") {print $2; exit}')"
  [ -n "$file" ] || { fail "node24:dosya-bulunamadi"; return 0; }
  tmp="$(mktemp -d)"
  curl -fsSL "https://nodejs.org/dist/latest-v24.x/$file" -o "$tmp/$file" || { fail "node24:indirme"; rm -rf "$tmp"; return 0; }
  mkdir -p "$dest"
  tar -xJf "$tmp/$file" -C "$dest" --strip-components=1 || fail "node24:acma"
  rm -rf "$tmp"
}

install_docker(){
  command -v docker >/dev/null 2>&1 && return 0
  say "Docker kuruluyor"
  apt-get install -y docker.io >/dev/null 2>&1 || {
    curl -fsSL https://get.docker.com -o /tmp/get-docker.sh 2>/dev/null || true
    [ -s /tmp/get-docker.sh ] && sh /tmp/get-docker.sh >/dev/null 2>&1 || fail "docker"
    rm -f /tmp/get-docker.sh
  }
  apt-get install -y docker-compose-v2 >/dev/null 2>&1 || apt-get install -y docker-compose-plugin >/dev/null 2>&1 || true
  systemctl enable --now docker >/dev/null 2>&1 || true
}

install_trivy(){
  command -v trivy >/dev/null 2>&1 && return 0
  say "Trivy kuruluyor"
  wget -qO - https://aquasecurity.github.io/trivy-repo/deb/public.key 2>/dev/null | gpg --dearmor > /usr/share/keyrings/trivy.gpg 2>/dev/null || true
  echo "deb [signed-by=/usr/share/keyrings/trivy.gpg] https://aquasecurity.github.io/trivy-repo/deb generic main" > /etc/apt/sources.list.d/trivy.list
  apt-get update -qq || true
  apt-get install -y trivy >/dev/null 2>&1 || fail "trivy"
}

install_gitleaks(){
  command -v gitleaks >/dev/null 2>&1 && return 0
  local pat url tmp
  case "$(uname -m)" in
    x86_64) pat='linux_x64.tar.gz';;
    aarch64|arm64) pat='linux_arm64.tar.gz';;
    *) fail "gitleaks:islemci"; return 0;;
  esac
  url="$(curl -fsSL https://api.github.com/repos/gitleaks/gitleaks/releases/latest 2>/dev/null | jq -r --arg p "$pat" '.assets[].browser_download_url | select(endswith($p))' | head -1)"
  [ -n "$url" ] || { fail "gitleaks:adres"; return 0; }
  tmp="$(mktemp -d)"
  curl -fsSL "$url" -o "$tmp/g.tgz" && tar -xzf "$tmp/g.tgz" -C "$tmp" && install -m 755 "$tmp/gitleaks" /usr/local/bin/gitleaks || fail "gitleaks"
  rm -rf "$tmp"
}

install_anchore(){
  command -v syft >/dev/null 2>&1 || curl -sSfL https://raw.githubusercontent.com/anchore/syft/main/install.sh | sh -s -- -b /usr/local/bin >/dev/null 2>&1 || fail "syft"
  command -v grype >/dev/null 2>&1 || curl -sSfL https://raw.githubusercontent.com/anchore/grype/main/install.sh | sh -s -- -b /usr/local/bin >/dev/null 2>&1 || fail "grype"
}

install_ollama(){
  command -v ollama >/dev/null 2>&1 || curl -fsSL https://ollama.com/install.sh | sh >/dev/null 2>&1 || fail "ollama"
  # 4 GB RAM'li bu VPS'te model indirmiyoruz ve servisi simdilik kapali tutuyoruz.
  systemctl disable --now ollama >/dev/null 2>&1 || true
}

install_ngc_cli(){
  command -v ngc >/dev/null 2>&1 && return 0
  say "NVIDIA NGC komut araci hazirlaniyor"
  local t
  t="$(mktemp -d)"
  curl -fsSL https://ngc.nvidia.com/downloads/ngccli_linux.zip -o "$t/ngc.zip" 2>/dev/null || { fail "ngc-cli:indirme"; rm -rf "$t"; return 0; }
  unzip -q "$t/ngc.zip" -d "$t" 2>/dev/null || { fail "ngc-cli:acma"; rm -rf "$t"; return 0; }
  if [ -x "$t/ngc-cli/ngc" ]; then
    mkdir -p "$TOOLBOX/ngc"
    cp -a "$t/ngc-cli/." "$TOOLBOX/ngc/"
    ln -sf "$TOOLBOX/ngc/ngc" "$TOOLBOX/bin/ngc"
  else
    fail "ngc-cli:dosya-yok"
  fi
  rm -rf "$t"
}

pull_if_space(){
  local img="$1" min_gb="${2:-12}"
  if [ "$(free_gb)" -lt "$min_gb" ]; then
    fail "docker-image-atlandi-disk:$img"
    return 0
  fi
  docker pull "$img" >/dev/null 2>&1 || fail "docker-image:$img"
}

make_kimi_templates(){
  local skills agents s a d
  skills="architecture frontend-design motion-design backend database security testing code-review performance accessibility seo deployment git-workflow incident-debugging documentation upload-security photo-moderation video-moderation audio-moderation text-moderation spam-fraud payment-integration email-integration sms-integration backup-restore responsive-review master-frontend-design"
  agents="architect frontend ui-ux motion 3d-webgl backend api database migration security qa testing performance accessibility code-reviewer devops fixer foreman developer moderation video-worker media-moderation text-moderation backup incident-debug git-github final-reviewer"
  for s in $skills; do
    d="$TOOLBOX/kimi/skills/$s"; mkdir -p "$d"
    [ -f "$d/SKILL.md" ] || printf -- '---\nname: %s\ndescription: AnaBeyin icin %s becerisi.\n---\n\nSon site gelistirme asamasinda ayrintilandirilacak. Bu hazirlik asamasi canli site koduna dokunmaz.\n' "$s" "$s" > "$d/SKILL.md"
  done
  for a in $agents; do
    [ -f "$TOOLBOX/kimi/agents/$a.md" ] || printf '# %s\n\nAnaBeyin uzman ajan taslagi. Son site gelistirme asamasinda kesinlestirilecek. Bu asamada /var/www/anabeyin dosyalarina yazma yetkisi yoktur.\n' "$a" > "$TOOLBOX/kimi/agents/$a.md"
  done
}

make_report(){
  {
    echo "ANABEYIN TOPLU ALET KURULUM RAPORU"
    echo "Tarih: $(date -Is)"
    echo
    echo "Canli siteye yazma: YOK"
    echo "Canli servisleri yeniden baslatma: YOK"
    echo "Sistem yeniden baslatma: YOK"
    echo
    echo "Son yedek:"
    cat "$TOOLBOX/SON-YEDEK.txt" 2>/dev/null || true
    echo
    echo "Bellek:"; free -h
    echo "Disk:"; df -h /
    echo
    echo "Komutlar:"
    for x in git gh node npm pnpm python3 docker nginx psql redis-server kimi opencode ollama ngc semgrep gitleaks trivy syft grype clamscan ffmpeg tesseract restic rclone borg; do
      printf '%-18s : ' "$x"
      command -v "$x" 2>/dev/null || command -v "$TOOLBOX/npm-global/bin/$x" 2>/dev/null || command -v "$TOOLBOX/python/venv/bin/$x" 2>/dev/null || echo "BULUNAMADI"
    done
    echo
    echo "Mevcut AnaBeyin servisleri:"
    systemctl --no-pager --type=service --state=running 2>/dev/null | grep -Ei 'anabeyin|nginx|monarx|ssh' || true
    echo
    echo "Kurulamayan/sonra kontrol edilecekler:"
    if [ -s "$FAIL" ]; then sort -u "$FAIL"; else echo "YOK"; fi
    echo
    echo "Yeniden baslatma gerekiyorsa bile OTOMATIK YAPILMADI."
  } > "$REPORT" 2>&1
}

worker(){
  need_root
  mkdir -p "$TOOLBOX" "$TOOLBOX/bin" "$TOOLBOX/web" "$TOOLBOX/python" "$TOOLBOX/kimi/skills" "$TOOLBOX/kimi/agents" "$TOOLBOX/kimi/hooks" "$TOOLBOX/kimi/mcp" "$TOOLBOX/kimi/plugins" "$TOOLBOX/models" "$TOOLBOX/security" "$TOOLBOX/media" "$TOOLBOX/monitoring" "$TOOLBOX/backups"
  : > "$FAIL"
  exec >>"$LOG" 2>&1
  say "ANABEYIN TOPLU ALET KURULUMU BASLADI"
  echo "KURAL: /var/www/anabeyin dizinine yazilmiyor. Site bu asamada yapilmiyor."
  echo "KURAL: anabeyin-core ve anabeyin-kimi-keeper yeniden baslatilmiyor."
  echo "KURAL: sunucu yeniden baslatilmiyor."
  free -h; df -h /
  if [ "$(free_gb)" -lt 20 ]; then
    echo "20 GB'den az bos alan var; toplu kurulum guvenli degil."
    fail "disk:20GB-altinda"
    make_report
    exit 20
  fi

  make_backup

  if [ ! -d "$TOOLBOX/envanter/.git" ]; then
    git clone -q "$REPO_URL" "$TOOLBOX/envanter" 2>/dev/null || fail "envanter:git-clone"
  else
    git -C "$TOOLBOX/envanter" pull --ff-only >/dev/null 2>&1 || true
  fi

  export DEBIAN_FRONTEND=noninteractive
  POLICY_CREATED=0
  if [ ! -e /usr/sbin/policy-rc.d ]; then
    printf '#!/bin/sh\nexit 101\n' > /usr/sbin/policy-rc.d
    chmod 755 /usr/sbin/policy-rc.d
    POLICY_CREATED=1
  fi

  apt-get update -qq || fail "apt:update"
  APT=(
    git git-lfs gh curl wget jq yq gnupg ca-certificates
    ripgrep fd-find fzf tree rsync tmux htop ncdu lsof strace tcpdump dnsutils netcat-openbsd socat traceroute mtr-tiny whois nmap
    zip unzip p7zip-full tar gzip xz-utils openssl build-essential make gcc g++ pkg-config shellcheck
    python3 python3-dev python3-pip python3-venv pipx
    ffmpeg imagemagick libvips-tools libimage-exiftool-perl tesseract-ocr tesseract-ocr-tur tesseract-ocr-eng
    libmagic1 libmagic-dev file yara clamav clamav-freshclam qpdf ghostscript poppler-utils mat2 libreoffice pandoc
    auditd apparmor apparmor-utils ufw nftables unattended-upgrades fail2ban openssh-server
    postgresql postgresql-contrib postgresql-server-dev-all libpq-dev redis-server
    certbot python3-certbot-nginx restic rclone borgbackup lynis aide default-jre-headless libre2-dev modsecurity-crs
  )
  say "Ubuntu paketleri kuruluyor"
  for p in "${APT[@]}"; do apt_one "$p"; done

  if [ "$POLICY_CREATED" -eq 1 ]; then rm -f /usr/sbin/policy-rc.d; fi
  command -v fdfind >/dev/null 2>&1 && ! command -v fd >/dev/null 2>&1 && ln -sf "$(command -v fdfind)" /usr/local/bin/fd || true

  # Bu asamada yeni veri servislerini canliya baglamiyoruz.
  systemctl disable --now fail2ban >/dev/null 2>&1 || true
  systemctl disable --now postgresql >/dev/null 2>&1 || true
  systemctl disable --now redis-server >/dev/null 2>&1 || true
  # UFW ve nftables etkinlestirilmiyor; mevcut Hostinger guvenlik duvarina dokunulmuyor.

  install_docker
  install_node24
  export PATH="$TOOLBOX/node/bin:$TOOLBOX/npm-global/bin:$TOOLBOX/bin:$PATH"
  mkdir -p "$TOOLBOX/npm-global"
  printf 'export PATH="%s/node/bin:%s/npm-global/bin:%s/bin:$PATH"\n' "$TOOLBOX" "$TOOLBOX" "$TOOLBOX" > /etc/profile.d/anabeyin-toolbox.sh
  chmod 644 /etc/profile.d/anabeyin-toolbox.sh

  if command -v npm >/dev/null 2>&1; then
    npm config set prefix "$TOOLBOX/npm-global" >/dev/null 2>&1 || true
    say "pnpm, OpenCode ve gelistirme yardimcilari kuruluyor"
    npm install -g pnpm opencode-ai @sentry/cli npm-check-updates httpie >/dev/null 2>&1 || fail "npm:genel"
  fi

  if command -v pnpm >/dev/null 2>&1; then
    cd "$TOOLBOX/web"
    [ -f package.json ] || printf '{"name":"anabeyin-toolbox","private":true,"version":"1.0.0"}\n' > package.json
    say "On yuz ve uygulama kutuphaneleri kuruluyor"
    pnpm add react react-dom react-router-dom motion gsap three lottie-web @rive-app/react-canvas swiper embla-carousel-react @floating-ui/react react-hook-form zod @tanstack/react-query @tanstack/react-virtual zustand i18next react-i18next date-fns @uppy/core @uppy/dashboard @uppy/xhr-upload react-dropzone cropperjs plyr video.js hls.js lucide-react dompurify clsx react-window bullmq ioredis pg nodemailer undici >/dev/null 2>&1 || fail "pnpm:uygulama"
    say "Kod kalite ve sinama kutuphaneleri kuruluyor"
    pnpm add -D typescript vite @vitejs/plugin-react tailwindcss @tailwindcss/vite shadcn eslint prettier oxlint stylelint markdownlint-cli2 @commitlint/cli @commitlint/config-conventional husky lint-staged knip depcheck madge cspell publint @arethetypeswrong/cli @playwright/test @playwright/mcp vitest jest @testing-library/react @testing-library/user-event msw @faker-js/faker pixelmatch backstopjs axe-core @axe-core/playwright pa11y lighthouse @lhci/cli autocannon artillery rollup-plugin-visualizer source-map-explorer web-vitals storybook @storybook/react-vite >/dev/null 2>&1 || fail "pnpm:gelistirme"
    say "Playwright tarayicilari kuruluyor"
    pnpm exec playwright install --with-deps chromium firefox webkit >/dev/null 2>&1 || fail "playwright:tarayicilar"
  fi

  say "Python yalitilmis ortami kuruluyor"
  PYENV="$TOOLBOX/python/venv"
  [ -x "$PYENV/bin/python" ] || python3 -m venv "$PYENV" || fail "python:venv"
  if [ -x "$PYENV/bin/python" ]; then
    "$PYENV/bin/python" -m pip install --no-cache-dir -U pip setuptools wheel >/dev/null 2>&1 || true
    PY=(
      semgrep checkov bandit pip-audit detect-secrets
      pillow numpy python-magic yara-python rapidfuzz langdetect pyahocorasick
      opencv-python-headless onnxruntime ImageHash ffmpeg-python scenedetect easyocr
      faster-whisper openai-whisper silero-vad webrtcvad-wheels
      nudenet opennsfw2 transformers sentence-transformers open-clip-torch
      spacy presidio-analyzer presidio-anonymizer oletools huggingface-hub
      fasttext-wheel paddleocr paddlepaddle
    )
    for p in "${PY[@]}"; do
      [ "$(free_gb)" -lt 12 ] && { fail "python-agir-paketler-disk-siniri"; break; }
      echo "[PY] $p"
      "$PYENV/bin/python" -m pip install --no-cache-dir "$p" >/dev/null 2>&1 || fail "python:$p"
    done
  fi

  install_trivy
  install_gitleaks
  install_anchore
  install_ollama
  install_ngc_cli

  say "NVIDIA, OpenRouter ve Hugging Face anahtar dosyasi kontrol ediliyor"
  if [ -f "$SECRETS/ai.env" ]; then
    chmod 600 "$SECRETS/ai.env"
    grep -q '^NGC_API_KEY=' "$SECRETS/ai.env" || fail "anahtar:ngc-yok"
    grep -q '^OPENROUTER_API_KEY=' "$SECRETS/ai.env" || fail "anahtar:openrouter-yok"
    grep -q '^HF_TOKEN=' "$SECRETS/ai.env" || fail "anahtar:huggingface-yok"
  else
    fail "anahtar:dosya-yok"
  fi

  if command -v docker >/dev/null 2>&1; then
    say "Daha sonra kullanilacak agir servislerin Docker goruntuleri hazirlaniyor"
    pull_if_space "diegosouzapw/omniroute:latest" 14
    pull_if_space "ghcr.io/zaproxy/zaproxy:stable" 14
    pull_if_space "minio/minio:latest" 13
    pull_if_space "louislam/uptime-kuma:latest" 13
    pull_if_space "grafana/grafana:latest" 12
    pull_if_space "prom/prometheus:latest" 12
    pull_if_space "grafana/loki:latest" 12
    pull_if_space "netdata/netdata:stable" 12
    pull_if_space "ghcr.io/google/osv-scanner:latest" 12
  fi

  make_kimi_templates

  cat > "$TOOLBOX/bin/anabeyin-opencode" <<'EOF'
#!/usr/bin/env bash
set -a
. /etc/anabeyin-secrets/ai.env
set +a
exec /opt/anabeyin-toolbox/npm-global/bin/opencode "$@"
EOF
  chmod 700 "$TOOLBOX/bin/anabeyin-opencode"

  apt-get clean >/dev/null 2>&1 || true
  rm -rf /var/lib/apt/lists/* /root/.cache/pip 2>/dev/null || true
  make_report
  say "TOPLU ALET KURULUMU BITTI"
  echo "Rapor: $REPORT"
  echo "Eksikler: $FAIL"
  echo "Canli AnaBeyin sitesi ve mevcut ajanlar degistirilmedi."
}

install_service(){
  need_root
  install -m 700 "$0" "$SELF"
  cat > /etc/systemd/system/anabeyin-toolbox-install.service <<EOF
[Unit]
Description=AnaBeyin toplu arac kurulumu
After=network-online.target
Wants=network-online.target

[Service]
Type=oneshot
ExecStart=/bin/bash $SELF --worker
RemainAfterExit=yes
TimeoutStartSec=infinity
Nice=10
IOSchedulingClass=best-effort
IOSchedulingPriority=7

[Install]
WantedBy=multi-user.target
EOF
  systemctl daemon-reload
  systemctl enable anabeyin-toolbox-install.service >/dev/null 2>&1 || true
  systemctl restart --no-block anabeyin-toolbox-install.service
  echo
  echo "Toplu kurulum arka planda baslatildi."
  echo "Mevcut AnaBeyin servisleri yeniden baslatilmayacak."
  echo "Sunucu yeniden baslatilmayacak."
  echo "Kayit: $LOG"
  echo "Rapor: $REPORT"
}

case "${1:-}" in
  --worker) worker ;;
  *) need_root; save_secrets; install_service ;;
esac
