sudo usermod -aG libvirt $(whoami)
newgrp libvirt
sudo systemctl restart libvirtd.service
echo "-----------------------------------"
echo "done. go check if virt-manager has qemu properly installed"
echo "edit /etc/default/grub with 'intel_iommu=on iommu=pt' and grub-mkconfig or grub2-mkconfig ( -o /etc/grub.cfg /etc/grub2.cfg )"
echo "edit /etc/mkinitcpio.conf to add ' vfio vfio_iommu_type1 vfio_pci vfio_virqfd ' to add_driver"
