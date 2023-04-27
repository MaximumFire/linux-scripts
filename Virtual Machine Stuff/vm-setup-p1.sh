sudo pacman -Syy
sudo pacman -S archlinux-keyring
sudo pacman -S qemu virt-manager virt-viewer dnsmasq vde2 bridge-utils openbsd-netcat ebtables iptables
sudo pacman -S libguestfs
sudo systemctl enable libvirtd.service
sudo systemctl start libvirtd.service
echo "------------------------"
echo "Now add 'unix_sock_group = 'libvirt'' and 'unix_sock_rw_perms = '0770'' to /etc/libvirt/libvirtd.conf
