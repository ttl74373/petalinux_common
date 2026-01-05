### Setup TFTP Server
* Install tftp server
```
sudo apt update
sudo apt install tftpd-hpa
```
* Edit /etc/default/tftpd-hpa
* Specify TFTP_DIRECTORY = /var/lib/tftpboot/Kria_KR260
* Start tftp server and enable it to start on boot
```
sudo systemctl restart tftpd-hpa
sudo systemctl enable tftpd-hpa
```
* Set permissions to the tftp dir path
```
sudo chmod -R 777 /var/lib/tftpboot/Kria_KR260
```
### Install tools
* Download and install Vivado and PetaLinux 2024.2 and BSP
### Build PetaLinux project
* Create PetaLinux project
```
source /opt/Xilinx/Vivado/2024.2/.settings64-Vivado.sh
source /opt/PetaLinux/settings.sh
cd ~/projects/Kria_KR260/
time petalinux-create -t project -s ~/Downloads/xilinx-kr260-starterkit-v2024.2-12072024.bsp --name kr260-sdt-2024-2
cd kr260-sdt-2024-2
```
* Import the .xsa
```
time petalinux-config --get-hw-description ../
```
* Set tftpdir in petalinux config tui
```
petalinux-config
```
* Use the arrow keys to highlight the Image Packaging Configuration option and press Enter
* In the next menu, locate the option Copy final images to tftpboot. Ensure this option is enabled (indicated by ```[*]```)
* Navigate to and select the setting that specifies the TFTP directory path
* Enter the tftp dir path
```
/var/lib/tftpboot/Kria_KR260
```
* Save and Exit
* Build PetaLinux project
```
petalinux-build
```
* Create BOOT.BIN
```
time petalinux-package --boot --u-boot --force
```
### Create SD Card (skip for net boot)
* Create the WIC image (WIC command from UG1144)
```
time petalinux-package wic --images-dir images/linux/ --bootfiles "ramdisk.cpio.gz.u-boot,boot.scr,Image,system.dtb,system-zynqmp-sck-kr-g-revB.dtb"
```
* Insert SD card into build machine and burn
```
sudo mkdir -p /mnt/boot /mnt/root
sudo mount /dev/sdc1 /mnt/boot   # Mount FAT32 partition
sudo mount /dev/sdc2 /mnt/root # Mount ext4 partition
sudo rm -rf /mnt/root/
sudo cp images/linux/BOOT.BIN /mnt/boot
sudo cp images/linux/image.ub /mnt/boot
sudo cp images/linux/boot.scr /mnt/boot
mkdir -p ~/root
tar -xzvf images/linux/rootfs.tar.gz -C ~/root
sudo cp -r ~/root/* /mnt/root
sudo umount /mnt/boot /mnt/root
```
### Boot on hw
* Open serial terminal at 115200 8,N,1
```
sudo minicom -D /dev/ttyUSB0
```
* Get uboot config up and set tftp in uboot and load files
```
setenv ipaddr 192.168.0.10
setenv serverip 192.168.0.113
setenv gatewayip 192.168.0.1
setenv prefix /var/lib/tftpboot/Kria_KR260
setenv bootfile ${prefix}/image.ub 
setenv kernel_image ${prefix}/Image
setenv devicetree_image ${prefix}/system.dtb
setenv ramdisk_image ${prefix}/rootfs.cpio.gz.u-boot
pxe get
```
* Boot Linux
```
pxe boot
```
* Setup Linux Ethernet
```
ifconfig eth1 192.168.0.10 netmask 255.255.255.0 up
ip addr add 192.168.0.10/24 dev eth1
ip link set eth1 up
```
* Test with ping
```
ping 192.168.0.113
```
