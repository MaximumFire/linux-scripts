# make source dir
mkdir ~/sources
cd ~/sources

# install dependencies for installation
sudo apt-get update
sudo apt-get install make gcc linux-headers-$(uname -r) build essentials git usb-modeswitch

# download + install driver
git clone https://github.com/lwfinger/rtl8852au.git
cd rtl8852au
sudo dkms add .
sudo dkms build rtl8852au -v 1.15.0.1
sudo dkms install rtl8852au -v 1.15.0.1

# load driver
sudo modprobe 8852au
