#Chrome config
cd /home/$USER/.config/
touch chrome-flags.conf
chmod 777 chrome-flags.conf
echo "--password-store=kwallet5" >>chrome-flags.conf

touch chromium-flags.conf
chmod 777 chromium-flags.conf
echo "--password-store=kwallet5" >>chromium-flags.conf
