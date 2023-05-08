# make source dir
mkdir ~/sources
cd ~/sources

# install dependencies for installation
sudo dnf install kernel-headers kernel-devel git dkms
sudo dnf group install "C Development Tools and Libraries"

# download + install driver
git clone https://github.com/lwfinger/rtl8852au.git
cd rtl8852au
sudo dkms add .
sudo dkms build rtl8852au -v 1.15.0.1
sudo dkms install rtl8852au -v 1.15.0.1

# load driver
sudo modprobe 8852au
