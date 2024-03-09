#!/usr/bin/bash
#Chrome config
cd /home/$USER/.config/
touch chrome-flags.conf
chmod 777 chrome-flags.conf
echo "--password-store=kwallet5" >>chrome-flags.conf

touch chromium-flags.conf
chmod 777 chromium-flags.conf
echo "--password-store=kwallet5" >>chromium-flags.conf

#Environment
sudo vim /etc/environment <<EOF
G
$
o


GTK_IM_MODULE=fcitx
QT_IM_MODULE=fcitx
XMODIFIERS=@im=fcitx
SDL_IM_MODULE=fcitx
GLFW_IM_MODULE=ibus

:wq
EOF

sudo vim /etc/environment <<EOF
G
$
o


export https_proxy=127.0.0.1:7890
export https_proxy=127.0.0.1:7890
export socks_proxy=127.0.0.1:7890

:wq
EOF

#pacman
#开启颜色提醒、并行下载、multilib和cn库
sudo vim /etc/pacman.conf <<EOF
/Color

x
/ParallelDownloads = 5

x
/[multilib]

x
/Include = /etc/pacman.d/mirrorlist

x
G
$
o


[archlinuxcn]
Server = https://mirrors.bfsu.edu.cn/archlinuxcn/$arch
:wq
EOF

sudo mv /home/$USER/dotfile/mirrorlist /etc/pacman.d/
sudo mv /home/$USER/dotfile/makepkg.conf /etc/

cd /etc/modprobe.d/
touch disable-dmic.conf
chmod 777 disable-dmic.conf
echo "options snd_hda_intel dmic_detect=0" >>disable-dmic.conf
