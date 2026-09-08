#!/usr/bin/env bash
set -euo pipefail

MAIN_URL="https://raw.githubusercontent.com/kemaltirli92-ai/anabeyin-ana-talimat/main/install/anabeyin-toolbox-installer.sh"
EXTRA_URL="https://raw.githubusercontent.com/kemaltirli92-ai/anabeyin-ana-talimat/main/install/anabeyin-toolbox-extra.sh"
MAIN="/root/anabeyin-toolbox-installer.sh"
EXTRA="/root/anabeyin-toolbox-extra.sh"

if [ "$(id -u)" -ne 0 ]; then
  echo "Bu hazırlık root yetkisi ister."
  exit 1
fi

echo "============================================================"
echo " ANABEYIN TAM HAZIRLIK"
echo " - Canlı siteye dokunmaz"
echo " - anabeyin-core servisini yeniden başlatmaz"
echo " - anabeyin-kimi-keeper servisini yeniden başlatmaz"
echo " - Sunucuyu yeniden başlatmaz"
echo " - Kimi/K3 model çağrısı yapmaz"
echo " - 521 envanterdeki kurulabilir araçları hazırlar"
echo "============================================================"

curl -fsSL "$MAIN_URL" -o "$MAIN"
curl -fsSL "$EXTRA_URL" -o "$EXTRA"
chmod 700 "$MAIN" "$EXTRA"

# Ana kurucu 3 gizli sağlayıcı anahtarını kullanıcıdan alır ve ana kurulumu systemd altında başlatır.
bash "$MAIN"

cat > /etc/systemd/system/anabeyin-toolbox-extra.service <<UNIT
[Unit]
Description=AnaBeyin ek araç hazırlığı ve K3 kota koruması
Requires=anabeyin-toolbox-install.service
After=anabeyin-toolbox-install.service

[Service]
Type=oneshot
ExecStart=/bin/bash $EXTRA
RemainAfterExit=yes
TimeoutStartSec=infinity
Nice=10
IOSchedulingClass=best-effort
IOSchedulingPriority=7

[Install]
WantedBy=multi-user.target
UNIT

systemctl daemon-reload
systemctl enable anabeyin-toolbox-extra.service >/dev/null 2>&1 || true
systemctl restart --no-block anabeyin-toolbox-extra.service

echo
echo "============================================================"
echo " TAM HAZIRLIK KUYRUGA ALINDI"
echo "============================================================"
echo "1) Ana toplu kurulum arka planda çalışacak."
echo "2) O bitince ek araç kurulumu otomatik başlayacak."
echo "3) Kimi/K3 bu kurulum tarafından çağrılmayacak."
echo "4) Bilgisayarı kapatsan da systemd devam edecek."
echo
echo "Ana kayıt: /var/log/anabeyin-toolbox-install.log"
echo "Ek kayıt : /var/log/anabeyin-toolbox-extra.log"
echo "Ana rapor: /opt/anabeyin-toolbox/KURULUM-SONUCU.txt"
echo "Ek rapor : /opt/anabeyin-toolbox/EK-KURULUM-SONUCU.txt"
