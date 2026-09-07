#!/usr/bin/env bash

set -u

REPO="kemaltirli92-ai/anabeyin-ana-talimat"
SELF="/root/anabeyin-toolbox-installer.sh"
TOOLBOX="/opt/anabeyin-toolbox"
SECRETS="/etc/anabeyin-secrets"
LOG="/var/log/anabeyin-toolbox-install.log"
FAIL="$TOOLBOX/KURULAMAYANLAR.txt"
REPORT="$TOOLBOX/KURULUM-SONUCU.txt"

say(){ printf '\n[%s] %s\n' "$(date '+%F %T')" "$*"; }
record_fail(){ mkdir -p "$TOOLBOX"; printf '%s\n' "$*" >> "$FAIL"; }

need_root(){
  if [ "$(id -u)" -ne 0 ]; then
    echo "Bu kurucu root yetkisi ister. sudo -i ile calistir."
    exit 1
  fi
}

save_secrets(){
  need_root
  echo "============================================================"
  echo " ANABEYIN - GIZLI ANAHTAR KAYDI"
  echo " Yazdigin karakterler ekranda GORUNECEK."
  echo " Bu anahtarlar GitHub'a gonderilmeyecek."
  echo " Ekran goruntusu alma."
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
    printf 'NVIDIA_API_KEY=%s\n' "$NGC_KEY"
    printf 'OPENROUTER_API_KEY=%s\n' "$OR_KEY"
    printf 'HF_TOKEN=%s\n' "$HF_KEY"
    printf 'HUGGINGFACE_HUB_TOKEN=%s\n' "$HF_KEY"
  } > "$SECRETS/ai.env"
  chmod 600 "$SECRETS/ai.env"
  unset NGC_KEY OR_KEY HF_KEY
  echo
  echo "Anahtarlar kaydedildi: $SECRETS/ai.env"
  echo "Izin: sadece root okuyabilir (0600)."
}

install_service(){
  need_root
  install -m 700 "$0" "$SELF"
  cat > /etc/systemd/system/anabeyin-toolbox-install.service <<UNIT
[Unit]
Description=AnaBeyin toplu arac ve servis kurulumu
After=network-online.target
Wants=network-online.target

[Service]
Type=oneshot
ExecStart=/bin/bash $SELF --worker
RemainAfterExit=yes
TimeoutStartSec=infinity

[Install]
WantedBy=multi-user.target
UNIT
  systemctl daemon-reload
  systemctl enable anabeyin-toolbox-install.service >/dev/null 2>&1 || true
  systemctl restart --no-block anabeyin-toolbox-install.service
  echo
  echo "Toplu kurulum ARKA PLANDA baslatildi."
  echo "Bilgisayari/terminali kapatsan da systemd devam eder."
  echo "Kayit: $LOG"
}

apt_one(){
  local p="$1"
  if dpkg -s "$p" >/dev/null 2>&1; then
    echo "[VAR] $p"
    return 0
  fi
  echo "[KUR] $p"
  apt-get install -y "$p" >/dev/null 2>&1 || { echo "[ATLANDI] $p"; record_fail "apt:$p"; return 0; }
}

install_docker(){
  if command -v docker >/dev/null 2>&1; then return 0; fi
  say "Docker kuruluyor"
  install -m 0755 -d /etc/apt/keyrings
  curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc || { record_fail docker-key; return 0; }
  chmod a+r /etc/apt/keyrings/docker.asc
  . /etc/os-release
  cat > /etc/apt/sources.list.d/docker.sources <<EOF
Types: deb
URIs: https://download.docker.com/linux/ubuntu
Suites: ${UBUNTU_CODENAME:-$VERSION_CODENAME}
Components: stable
Architectures: $(dpkg --print-architecture)
Signed-By: /etc/apt/keyrings/docker.asc
EOF
  apt-get update -qq || true
  apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin >/dev/null 2>&1 || record_fail docker
  systemctl enable --now docker >/dev/null 2>&1 || true
}

install_node24(){
  local dest="$TOOLBOX/node"
  if [ -x "$dest/bin/node" ]; then return 0; fi
  say "Node.js 24 yalıtılmış kurulum"
  local a n tmp
  case "$(uname -m)" in
    x86_64) a=x64;;
    aarch64|arm64) a=arm64;;
    *) record_fail node-unsupported-arch; return 0;;
  esac
  n="$(curl -fsSL https://nodejs.org/dist/latest-v24.x/SHASUMS256.txt 2>/dev/null | awk -v a="$a" '$2 ~ ("linux-" a "\\.tar\\.xz$") {print $2; exit}')"
  [ -n "$n" ] || { record_fail node24; return 0; }
  tmp="$(mktemp -d)"
  curl -fsSL "https://nodejs.org/dist/latest-v24.x/$n" -o "$tmp/$n" || { record_fail node24-download; rm -rf "$tmp"; return 0; }
  mkdir -p "$dest"
  tar -xJf "$tmp/$n" -C "$dest" --strip-components=1 || record_fail node24-extract
  rm -rf "$tmp"
}

install_trivy(){
  command -v trivy >/dev/null 2>&1 && return 0
  say "Trivy kuruluyor"
  apt-get install -y wget gnupg >/dev/null 2>&1 || true
  wget -qO - https://aquasecurity.github.io/trivy-repo/deb/public.key | gpg --dearmor > /usr/share/keyrings/trivy.gpg 2>/dev/null || true
  echo "deb [signed-by=/usr/share/keyrings/trivy.gpg] https://aquasecurity.github.io/trivy-repo/deb generic main" > /etc/apt/sources.list.d/trivy.list
  apt-get update -qq || true
  apt-get install -y trivy >/dev/null 2>&1 || record_fail trivy
}

install_crowdsec(){
  command -v crowdsec >/dev/null 2>&1 || {
    say "CrowdSec guvenlik motoru kuruluyor"
    curl -s https://install.crowdsec.net | sh >/dev/null 2>&1 || true
    apt-get update -qq || true
    apt-get install -y crowdsec >/dev/null 2>&1 || record_fail crowdsec
  }
  systemctl enable --now crowdsec >/dev/null 2>&1 || true
  # Engelleyici/bouncer bu asamada baglanmiyor; mevcut site trafigine dokunma.
}

install_gitleaks(){
  command -v gitleaks >/dev/null 2>&1 && return 0
  say "Gitleaks kuruluyor"
  local pat url tmp
  case "$(uname -m)" in
    x86_64) pat='linux_x64.tar.gz';;
    aarch64|arm64) pat='linux_arm64.tar.gz';;
    *) record_fail gitleaks-arch; return 0;;
  esac
  url="$(curl -fsSL https://api.github.com/repos/gitleaks/gitleaks/releases/latest 2>/dev/null | jq -r --arg p "$pat" '.assets[].browser_download_url | select(endswith($p))' | head -1)"
  [ -n "$url" ] || { record_fail gitleaks-url; return 0; }
  tmp="$(mktemp -d)"
  curl -fsSL "$url" -o "$tmp/g.tgz" && tar -xzf "$tmp/g.tgz" -C "$tmp" && install -m 755 "$tmp/gitleaks" /usr/local/bin/gitleaks || record_fail gitleaks
  rm -rf "$tmp"
}

install_anchore(){
  command -v syft >/dev/null 2>&1 || curl -sSfL https://raw.githubusercontent.com/anchore/syft/main/install.sh | sh -s -- -b /usr/local/bin >/dev/null 2>&1 || record_fail syft
  command -v grype >/dev/null 2>&1 || curl -sSfL https://raw.githubusercontent.com/anchore/grype/main/install.sh | sh -s -- -b /usr/local/bin >/dev/null 2>&1 || record_fail grype
}

install_ollama(){
  command -v ollama >/dev/null 2>&1 || curl -fsSL https://ollama.com/install.sh | sh >/dev/null 2>&1 || record_fail ollama
  systemctl enable --now ollama >/dev/null 2>&1 || true
}

install_pgvector(){
  command -v pg_config >/dev/null 2>&1 || return 0
  say "pgvector kuruluyor"
  local t
  t="$(mktemp -d)"
  git clone -q --depth 1 https://github.com/pgvector/pgvector.git "$t/pgvector" 2>/dev/null || { record_fail pgvector-clone; rm -rf "$t"; return 0; }
  (cd "$t/pgvector" && make -s -j"$(nproc)" && make -s install) || record_fail pgvector
  rm -rf "$t"
}

worker(){
  need_root
  mkdir -p "$TOOLBOX" "$TOOLBOX/bin" "$TOOLBOX/web" "$TOOLBOX/python" "$TOOLBOX/kimi/skills" "$TOOLBOX/kimi/agents" "$TOOLBOX/kimi/hooks" "$TOOLBOX/kimi/mcp" "$TOOLBOX/kimi/plugins" "$TOOLBOX/models" "$TOOLBOX/security" "$TOOLBOX/media" "$TOOLBOX/monitoring" "$TOOLBOX/backups"
  : > "$FAIL"
  exec >>"$LOG" 2>&1

  say "ANABEYIN TOPLU ALET KURULUMU BASLADI"
  echo "KURAL: /var/www/anabeyin dizinine yazilmayacak. Site bu asamada yapilmayacak."
  cat /etc/os-release 2>/dev/null || true
  df -h /
  free -h

  # Paket kurulumlari yeni servisleri otomatik baslatmasin. Mevcut calisan servisleri durdurmaz.
  POLICY_CREATED=0
  if [ ! -e /usr/sbin/policy-rc.d ]; then
    printf '#!/bin/sh\nexit 101\n' > /usr/sbin/policy-rc.d
    chmod 755 /usr/sbin/policy-rc.d
    POLICY_CREATED=1
  fi

  export DEBIAN_FRONTEND=noninteractive
  apt-get update -qq || true

  APT=(
    git git-lfs gh curl wget jq yq gnupg ca-certificates apt-transport-https
    ripgrep fd-find fzf tree rsync tmux htop ncdu lsof strace tcpdump dnsutils netcat-openbsd socat traceroute mtr-tiny whois nmap
    zip unzip p7zip-full tar gzip xz-utils openssl build-essential make gcc g++ pkg-config shellcheck
    python3 python3-dev python3-pip python3-venv pipx
    ffmpeg imagemagick libvips-tools libimage-exiftool-perl tesseract-ocr tesseract-ocr-tur tesseract-ocr-eng
    libmagic1 libmagic-dev file clamav clamav-freshclam qpdf ghostscript poppler-utils mat2 libreoffice pandoc
    auditd apparmor apparmor-utils ufw nftables unattended-upgrades fail2ban openssh-server
    postgresql postgresql-contrib postgresql-server-dev-all libpq-dev redis-server
    nginx certbot python3-certbot-nginx restic rclone borgbackup lynis aide default-jre-headless libre2-dev
    modsecurity-crs
  )
  say "Ubuntu paketleri kuruluyor"
  for p in "${APT[@]}"; do apt_one "$p"; done

  if [ "$POLICY_CREATED" -eq 1 ]; then rm -f /usr/sbin/policy-rc.d; fi

  command -v fdfind >/dev/null 2>&1 && ! command -v fd >/dev/null 2>&1 && ln -sf "$(command -v fdfind)" /usr/local/bin/fd || true

  # Siteye dokunmayan yerel servisler.
  systemctl enable --now postgresql >/dev/null 2>&1 || true
  systemctl enable --now redis-server >/dev/null 2>&1 || true
  systemctl enable --now auditd >/dev/null 2>&1 || true
  # fail2ban yedek; CrowdSec ile ayni anda ana engelleyici olarak calistirma.
  systemctl disable --now fail2ban >/dev/null 2>&1 || true
  # UFW/nftables kurulu ama mevcut SSH/siteyi kesmemek icin burada etkinlestirilmiyor.

  install_docker
  install_node24
  export PATH="$TOOLBOX/node/bin:$TOOLBOX/npm-global/bin:$TOOLBOX/bin:$PATH"
  mkdir -p "$TOOLBOX/npm-global"
  cat > /etc/profile.d/anabeyin-toolbox.sh <<EOF
export PATH="$TOOLBOX/node/bin:$TOOLBOX/npm-global/bin:$TOOLBOX/bin:\$PATH"
EOF
  chmod 644 /etc/profile.d/anabeyin-toolbox.sh

  if command -v npm >/dev/null 2>&1; then
    npm config set prefix "$TOOLBOX/npm-global" >/dev/null 2>&1 || true
    say "pnpm, OpenCode ve yardimci Node araclari"
    npm install -g pnpm opencode-ai @sentry/cli npm-check-updates >/dev/null 2>&1 || record_fail node-global
  fi

  if command -v pnpm >/dev/null 2>&1; then
    cd "$TOOLBOX/web"
    [ -f package.json ] || printf '{"name":"anabeyin-toolbox","private":true,"version":"1.0.0"}\n' > package.json
    say "On yuz / tasarim / uygulama paketleri"
    pnpm add react react-dom react-router-dom motion gsap three lottie-web @rive-app/react-canvas swiper embla-carousel-react @floating-ui/react react-hook-form zod @tanstack/react-query @tanstack/react-virtual zustand i18next react-i18next date-fns @uppy/core @uppy/dashboard @uppy/xhr-upload react-dropzone cropperjs plyr video.js hls.js lucide-react dompurify clsx react-window bullmq ioredis pg nodemailer undici >/dev/null 2>&1 || record_fail web-runtime
    say "Kod kalite / test / tarayici paketleri"
    pnpm add -D typescript vite @vitejs/plugin-react tailwindcss @tailwindcss/vite shadcn eslint prettier oxlint stylelint markdownlint-cli2 @commitlint/cli @commitlint/config-conventional husky lint-staged knip depcheck madge cspell publint @arethetypeswrong/cli @playwright/test @playwright/mcp vitest jest @testing-library/react @testing-library/user-event msw @faker-js/faker pixelmatch backstopjs axe-core @axe-core/playwright pa11y lighthouse @lhci/cli autocannon artillery rollup-plugin-visualizer source-map-explorer web-vitals storybook @storybook/react-vite >/dev/null 2>&1 || record_fail web-dev
    pnpm exec playwright install --with-deps chromium firefox webkit >/dev/null 2>&1 || record_fail playwright-browsers
  fi

  say "Python güvenlik / medya / yapay zeka araclari"
  PYENV="$TOOLBOX/python/venv"
  [ -x "$PYENV/bin/python" ] || python3 -m venv "$PYENV"
  "$PYENV/bin/python" -m pip install -q --upgrade pip setuptools wheel || true
  PY=(
    semgrep checkov bandit pip-audit detect-secrets pillow numpy python-magic yara-python rapidfuzz langdetect pyahocorasick
    ffmpeg-python opencv-python-headless onnxruntime ImageHash faster-whisper openai-whisper scenedetect easyocr nudenet opennsfw2
    transformers sentence-transformers open-clip-torch spacy presidio-analyzer presidio-anonymizer silero-vad webrtcvad-wheels oletools
    paddleocr huggingface-hub
  )
  for p in "${PY[@]}"; do
    echo "[PY] $p"
    "$PYENV/bin/python" -m pip install -q "$p" || record_fail "python:$p"
  done

  install_trivy
  install_gitleaks
  install_anchore
  install_crowdsec
  install_ollama
  install_pgvector

  # ClamAV imza veritabani.
  systemctl stop clamav-freshclam >/dev/null 2>&1 || true
  freshclam >/dev/null 2>&1 || record_fail freshclam
  systemctl enable --now clamav-freshclam >/dev/null 2>&1 || true

  # GitHub'daki kesin 521 envanteri bu sunucuda da kalsin.
  say "521 envanteri sunucuya aliniyor"
  if [ ! -d "$TOOLBOX/envanter-repo/.git" ]; then
    git clone -q "https://github.com/$REPO.git" "$TOOLBOX/envanter-repo" 2>/dev/null || record_fail envanter-repo
  else
    git -C "$TOOLBOX/envanter-repo" pull -q --ff-only || true
  fi

  # Kimi beceri ve uzman ajan iskeletleri. Ayrintili site talimatlari en son yazilacak.
  SKILLS=(architecture frontend-design motion-design backend database security testing code-review performance accessibility seo deployment git-workflow incident-debugging documentation upload-security photo-moderation video-moderation audio-moderation text-moderation spam-fraud payment-integration email-integration sms-integration backup-restore responsive-review master-frontend-design)
  for s in "${SKILLS[@]}"; do
    d="$TOOLBOX/kimi/skills/$s"; mkdir -p "$d"
    [ -f "$d/SKILL.md" ] || printf -- '---\nname: %s\ndescription: AnaBeyin %s becerisi\n---\n\nSon site gelistirme asamasinda kesin talimatlarla doldurulacak.\n' "$s" "$s" > "$d/SKILL.md"
  done
  AGENTS=(architect frontend ui-ux motion 3d-webgl backend api database migration security qa testing performance accessibility code-reviewer devops fixer foreman developer moderation video-worker media-moderation text-moderation backup incident-debug git-github final-reviewer)
  for a in "${AGENTS[@]}"; do
    [ -f "$TOOLBOX/kimi/agents/$a.md" ] || printf '# %s\n\nAnaBeyin uzman ajan iskeleti. Site asamasinda kesinlestirilecek.\n' "$a" > "$TOOLBOX/kimi/agents/$a.md"
  done

  # Agir servisleri indir, simdi calistirma. Site asamasinda baglanacaklar.
  if command -v docker >/dev/null 2>&1; then
    say "Agir servis imajlari indiriliyor; baslatilmiyor"
    IMAGES=(
      ghcr.io/zaproxy/zaproxy:stable
      minio/minio:latest
      louislam/uptime-kuma:latest
      grafana/grafana:latest
      prom/prometheus:latest
      grafana/loki:latest
      netdata/netdata:stable
      ghcr.io/google/osv-scanner:latest
      diegosouzapw/omniroute:latest
    )
    for i in "${IMAGES[@]}"; do docker pull "$i" >/dev/null 2>&1 || record_fail "docker-image:$i"; done
  fi

  # Anahtarlari aciga cikarmadan sadece Hugging Face kimlik dogrulamasi dene.
  if [ -f "$SECRETS/ai.env" ]; then
    set -a; . "$SECRETS/ai.env"; set +a
    code="$(curl -sS -o /tmp/anabeyin-hf.json -w '%{http_code}' -H "Authorization: Bearer $HF_TOKEN" https://huggingface.co/api/whoami-v2 2>/dev/null || true)"
    [ "$code" = 200 ] || record_fail "huggingface-key-http-$code"
    rm -f /tmp/anabeyin-hf.json
    unset NGC_API_KEY NVIDIA_API_KEY OPENROUTER_API_KEY HF_TOKEN HUGGINGFACE_HUB_TOKEN
  fi

  say "Son rapor yaziliyor"
  {
    echo "ANABEYIN TOPLU ARAC KURULUM RAPORU"
    echo "Tarih: $(date -Is)"
    echo "Site: /var/www/anabeyin bu kurulumda degistirilmedi."
    echo
    echo "KOMUTLAR"
    for x in git gh node npm pnpm python3 docker psql redis-server ffmpeg ffprobe convert exiftool tesseract clamscan trivy gitleaks syft grype opencode ollama crowdsec restic rclone borg; do
      printf '%-22s : ' "$x"
      command -v "$x" 2>/dev/null || command -v "$TOOLBOX/npm-global/bin/$x" 2>/dev/null || command -v "$TOOLBOX/python/venv/bin/$x" 2>/dev/null || echo YOK
    done
    echo
    echo "SERVISLER"
    for s in docker postgresql redis-server crowdsec ollama; do printf '%-22s : ' "$s"; systemctl is-active "$s" 2>/dev/null || true; done
    echo
    echo "PORTLAR"; ss -lntup 2>/dev/null || true
    echo
    echo "DISK"; df -h /
    echo
    echo "BELLEK"; free -h
    echo
    echo "KURULAMAYAN / SONRA KONTROL"
    if [ -s "$FAIL" ]; then sort -u "$FAIL"; else echo YOK; fi
  } > "$REPORT" 2>&1

  say "TOPLU ARAC KURULUMU BITTI"
  echo "Rapor: $REPORT"
  echo "Eksik: $FAIL"
  echo "Site HENUZ yapilmadi."
}

case "${1:-}" in
  --worker)
    worker
    ;;
  *)
    save_secrets
    install_service
    ;;
esac
