sudo mkinitcpio -P
lsmod | grep kvm
dmesg | grep -i IOMMU
cat /proc/cmdline
echo "---------------------------------------------------------"
echo "check installation with all above output"
echo "create win10 vm and install windows"