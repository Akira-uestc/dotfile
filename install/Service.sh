#!/usr/bash

#clash daemon
cd /etc/systemd/system/
sudo touch clash.service

curl https://amazing.congyusub.top/sub/559b900c62fac5c0/clash >/home/$USER/config.yaml
cd /home/$USER/.config/
mkdir clash
chmod 777 clash
cd clash
mv /home/$USER/config.yaml ./

sudo vim clash.service <<EOF
i
[Unit]
Description=Clash daemon
After=network.target

[Service]
Type=simple
Restart=always
ExecStart=/usr/bin/clash -d /home/$USER/.config/clash

[Install]
WantedBy=multi-user.target

:wq
EOF

systemctl enable clash
systemctl daemon-reload
systemctl start clash

#Auto Connect WIFI
cd /usr/lib/systemd/system/
touch UESTC_WIFI.service

sudo vim UESTC_WIFI.service <<EOF
i
[Unit]
Description=AutoExec

[Service]
ExecStart=/home/$USER/configuration/auto-connect.sh
Restart=always
RestartSec=1

[Install]
WantedBy=multi-user.target

:wq
EOF

cd /home/$USER
mkdir configuration
cp /home/$USER/dotfile/file/auto-connect.sh ./
cp /home/$USER/dotfile/file/UESTC-WIFI.py ./

systemctl enable UESTC_WIFI.service
systemctl daemon-reload
systemctl start UESTC_WIFI.service
