#!/usr/bin/bash
paru -S --needed - </home/$USER/dotfile/file/pkglist.txt

#zsh
chsh -s /usr/bin/zsh
sudo vim /home/akira/.zshrc <<EOF
G
$
o


source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/autojump/autojump.zsh

:wq
EOF
curl -fsSL https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh
sudo vim /home/akira/.zimrc <<EOF
G
$
o


zmodule romkatv/powerlevel10k

:wq
EOF
zimfw install

#wine
sudo pacman -S wine winetricks zenity lib32-gnutls lib32-pipewire
winetricks d3dx9 quartz devenum wmp10 gdiplus dotnet40 ffdshow vcrun6 cjkfonts

#nvim
cd /home/$USER/.config
mkdir nvim
chmod 777 nvim
mv /home/$USER/dotfile/.config/nvim/* nvim/
