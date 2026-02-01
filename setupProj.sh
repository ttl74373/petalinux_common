# Point to vivado install
source /opt/Xilinx/Vivado/2024.2/.settings64-Vivado.sh

# Upgrade PetaLinux eSDK
# The BSPs for the Kria KR260 and KV260 require the Update1 to be applied 
# to PetaLinux, otherwise the project will not build correctly (if at all).
# Start be sourcing the PetaLinux tools in the host machine environment.
source /opt/PetaLinux/settings.sh
# And upgrade the PetaLinux eSDK with Update1:
# petalinux-upgrade -u http://petalinux.xilinx.com/sswreleases/rel-v2022/sdkupdate/2022.1_update1/ -p "aarch64" --wget-args "--wait 1 -nH --cut-dirs=4"
cd ./Kria_KR260/
petalinux-create --type project -s ../Downloads/xilinx-kr260-starterkit-v2024.2-12072024.bsp --name linux_os
cd ./linux_os/

function build_kria_kr260() {
  local DIR_ORIGIN=$(pwd)
  cd $DIR_PETALINUX_COMMON/Kria_KR260/scripts
  date;time ./Kria_KR260.sh
  cd $DIR_ORIGIN
}
function build_kria_kr260_boardaware3() {
  local DIR_ORIGIN=$(pwd)
  cd $DIR_PETALINUX_COMMON/Kria_KR260_boardaware3/scripts
  date;time ./build.sh
  cd $DIR_ORIGIN
}