# make source dir
mkdir ~/sources
cd ~/sources

# install dependencies for installation
sudo pacman -Sy make gcc linux-headers base-devel git dkms usb_modeswitch

# download rtw89-dkms-git
git clone https://aur.archlinux.org/rtw89-dkms-git.git
cd rtw89-dkms-git
makepkg -sri
cd ~/sources

# download + install driver
git clone https://github.com/lwfinger/rtl8852au.git
cd rtl8852au
sudo dkms add .
sudo dkms build rtl8852au -v 1.15.0.1
sudo dkms install rtl8852au -v 1.15.0.1

# load driver
sudo modprobe 8852au

echo "-------------------------------------------------"
echo "reboot now in order to make sure everything is working"
