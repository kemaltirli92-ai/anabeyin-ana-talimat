#!/usr/bin/env bash
set -uo pipefail

SELF="/root/anabeyin-521-kesintisiz-baslat.sh"
STATE="/var/lib/anabeyin-521-install/state"
TOOLBOX="/opt/anabeyin-toolbox"
SECRETS="/etc/anabeyin-secrets"
LOG="/var/log/anabeyin-521-install.log"
MAIN="/root/anabeyin-toolbox-installer.sh"
EXTRA="/root/anabeyin-toolbox-extra.sh"
SUPP="/root/anabeyin-toolbox-supplement.sh"
BASE="https://raw.githubusercontent.com/kemaltirli92-ai/anabeyin-ana-talimat/main/install"

need_root(){ [ "$(id -u)" -eq 0 ] || { echo "root yetkisi gerekli"; exit 1; }; }
mark(){ mkdir -p "$STATE"; touch "$STATE/$1"; }
donep(){ [ -f "$STATE/$1" ]; }
say(){ printf '\n[%s] %s\n' "$(date '+%F %T')" "$*"; }
retry_curl(){
  local url="$1" out="$2" n=0
  while [ "$n" -lt 5 ]; do
    curl -fL --connect-timeout 20 --retry 3 --retry-delay 5 --retry-all-errors "$url" -o "$out" && return 0
    n=$((n+1)); sleep 30
  done
  return 1
}

save_secrets(){
  need_root
  install -d -m 700 "$SECRETS"
  echo "============================================================"
  echo " ANABEYIN 521 - GIZLI SAGLAYICI ANAHTARLARI"
  echo " Karakterler ekranda GORUNECEK."
  echo " Ekran goruntusu ALMA."
  echo " Anahtarlar GitHub'a veya kayit dosyasina yazilmayacak."
  echo "============================================================"
  echo
  read -r -p "NVIDIA NGC/NIM anahtarini yapistir, Enter: " NGC_KEY
  read -r -p "OpenRouter anahtarini yapistir, Enter: " OR_KEY
  read -r -p "Hugging Face anahtarini yapistir, Enter: " HF_KEY
  read -r -p "Cloudflare anabeyin-dns belirtecini yapistir, Enter: " CF_KEY
  read -r -p "NVIDIA Build API anahtari ayriysa yapistir; yoksa BOS birakip Enter: " NV_BUILD

  if [ -z "$NGC_KEY" ] || [ -z "$OR_KEY" ] || [ -z "$HF_KEY" ] || [ -z "$CF_KEY" ]; then
    echo "HATA: Zorunlu anahtarlardan biri bos. Hicbir kurulum baslatilmadi."
    exit 2
  fi

  umask 077
  {
    printf 'NGC_API_KEY=%s\n' "$NGC_KEY"
    printf 'OPENROUTER_API_KEY=%s\n' "$OR_KEY"
    printf 'HF_TOKEN=%s\n' "$HF_KEY"
    printf 'HUGGINGFACE_HUB_TOKEN=%s\n' "$HF_KEY"
    if [ -n "$NV_BUILD" ]; then printf 'NVIDIA_API_KEY=%s\n' "$NV_BUILD"; fi
  } > "$SECRETS/ai.env"
  {
    printf 'CLOUDFLARE_API_TOKEN=%s\n' "$CF_KEY"
    printf 'CLOUDFLARE_ZONE=anabeyin.com\n'
  } > "$SECRETS/cloudflare.env"
  chmod 600 "$SECRETS/ai.env" "$SECRETS/cloudflare.env"
  unset NGC_KEY OR_KEY HF_KEY CF_KEY NV_BUILD
  echo "Anahtarlar guvenli dizine kaydedildi."
}

install_unit(){
  need_root
  install -m 700 "$0" "$SELF"
  mkdir -p "$STATE" "$TOOLBOX"
  cat > /etc/systemd/system/anabeyin-521-install.service <<'UNIT'
[Unit]
Description=AnaBeyin 521 kesintisiz toplu arac kurulumu
Wants=network-online.target
After=network-online.target
StartLimitIntervalSec=0

[Service]
Type=simple
ExecStart=/bin/bash /root/anabeyin-521-kesintisiz-baslat.sh --worker
Restart=on-failure
RestartSec=90
TimeoutStartSec=infinity
Nice=10
IOSchedulingClass=best-effort
IOSchedulingPriority=7

[Install]
WantedBy=multi-user.target
UNIT
  systemctl daemon-reload
  systemctl enable anabeyin-521-install.service >/dev/null 2>&1 || true
  systemctl start --no-block anabeyin-521-install.service
  echo
  echo "============================================================"
  echo " 521 TOPLU KURULUM SUNUCUYA DEVREDILDI"
  echo "============================================================"
  echo "SSH/sekme/bilgisayar kapanabilir; servis sunucuda calisir."
  echo "Sunucu otomatik yeniden baslatilmayacak."
  echo "Kimi/K3 model cagrisi yapilmayacak."
  echo "Kayit: $LOG"
  echo "Durum: systemctl status anabeyin-521-install.service --no-pager -l"
}

worker(){
  need_root
  mkdir -p "$STATE" "$TOOLBOX"
  exec >>"$LOG" 2>&1
  exec 9>/run/anabeyin-521-install.lock
  flock -n 9 || { echo "Baska 521 kurucusu zaten calisiyor."; exit 0; }

  if donep TAMAMLANDI; then
    say "Kurulum daha once tamamlanmis. Tekrar islem yok."
    exit 0
  fi

  say "521 kesintisiz kurulum basladi/devam ediyor"
  echo "Kimi/K3 cagrisi: YASAK"
  echo "Canli siteyi yeniden yazma: YASAK"
  echo "Otomatik reboot: YASAK"

  if ! donep ON_KONTROL; then
    say "On kontrol"
    free -h || true
    df -h / || true
    systemctl is-active anabeyin-core.service || true
    systemctl is-active anabeyin-kimi-keeper.service || true
    systemctl is-active nginx.service || true
    gh auth status >/dev/null 2>&1 || { echo "GitHub CLI yetkilendirmesi yok."; exit 31; }
    [ "$(df --output=avail -BG / | tail -1 | tr -dc '0-9')" -ge 20 ] || { echo "20 GB'den az bos alan var."; exit 32; }
    mark ON_KONTROL
  fi

  if ! donep BETIKLER; then
    say "Kurulum betikleri indiriliyor"
    retry_curl "$BASE/anabeyin-toolbox-installer.sh" "$MAIN" || exit 41
    retry_curl "$BASE/anabeyin-toolbox-extra.sh" "$EXTRA" || exit 42
    retry_curl "$BASE/anabeyin-toolbox-supplement.sh" "$SUPP" || exit 43
    chmod 700 "$MAIN" "$EXTRA" "$SUPP"
    mark BETIKLER
  fi

  if ! donep ANA_KURULUM; then
    say "Ana toplu kurulum"
    bash "$MAIN" --worker
    # Betik bagimsiz paket hatalarini dosyaya yazar; tum isi durdurmaz.
    mark ANA_KURULUM
  fi

  if ! donep EK_KURULUM; then
    say "Ek araclar ve OmniRoute/OpenCode hazirligi"
    bash "$EXTRA"
    mark EK_KURULUM
  fi

  if ! donep TAMAMLAYICI; then
    say "521 tamamlayici kurulum"
    bash "$SUPP"
    mark TAMAMLAYICI
  fi

  if ! donep IKINCI_DENEME; then
    say "Basarisiz paketler icin ikinci tur"
    if [ -s "$TOOLBOX/KURULAMAYANLAR.txt" ]; then bash "$MAIN" --worker || true; fi
    if [ -s "$TOOLBOX/KURULAMAYANLAR-EK.txt" ]; then bash "$EXTRA" || true; fi
    if [ -s "$TOOLBOX/KURULAMAYANLAR-TAMAMLAYICI.txt" ]; then bash "$SUPP" || true; fi
    mark IKINCI_DENEME
  fi

  if ! donep SON_KONTROL; then
    say "Canli servis koruma kontrolu"
    CORE="$(systemctl is-active anabeyin-core.service 2>/dev/null || true)"
    KEEPER="$(systemctl is-active anabeyin-kimi-keeper.service 2>/dev/null || true)"
    NGINX="$(systemctl is-active nginx.service 2>/dev/null || true)"
    {
      echo "Tarih: $(date -Is)"
      echo "anabeyin-core=$CORE"
      echo "anabeyin-kimi-keeper=$KEEPER"
      echo "nginx=$NGINX"
      echo "KIMI_K3_KURULUM_CAGRISI=0"
      echo "Sunucu otomatik yeniden baslatma=YAPILMADI"
      echo "Canli /var/www/anabeyin yeniden yazma=YAPILMADI"
      echo
      echo "Ana eksikler:"; cat "$TOOLBOX/KURULAMAYANLAR.txt" 2>/dev/null || true
      echo "Ek eksikler:"; cat "$TOOLBOX/KURULAMAYANLAR-EK.txt" 2>/dev/null || true
      echo "Tamamlayici eksikler:"; cat "$TOOLBOX/KURULAMAYANLAR-TAMAMLAYICI.txt" 2>/dev/null || true
      echo
      free -h
      df -h /
    } > "$TOOLBOX/521-GENEL-SONUC.txt" 2>&1

    [ "$CORE" = active ] || echo "UYARI: anabeyin-core aktif degil" >> "$TOOLBOX/521-GENEL-SONUC.txt"
    [ "$KEEPER" = active ] || echo "UYARI: anabeyin-kimi-keeper aktif degil" >> "$TOOLBOX/521-GENEL-SONUC.txt"
    [ "$NGINX" = active ] || echo "UYARI: nginx aktif degil" >> "$TOOLBOX/521-GENEL-SONUC.txt"
    mark SON_KONTROL
  fi

  mark TAMAMLANDI
  say "521 arac hazirligi ana turu tamamlandi"
  echo "Sonuc: $TOOLBOX/521-GENEL-SONUC.txt"
  echo "464-521 gerçek site sistemleri ikinci buyuk gelistirme isinde kodlanacak."
}

case "${1:-}" in
  --worker) worker ;;
  *)
    need_root
    if ! gh auth status >/dev/null 2>&1; then
      echo "GitHub CLI yetkilendirmesi tamamlanmadan baslatma."
      exit 10
    fi
    save_secrets
    install_unit
    ;;
esac
