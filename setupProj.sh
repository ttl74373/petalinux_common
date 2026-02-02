# Point to vivado and petalinux tool install
source /opt/Xilinx/Vivado/2024.2/.settings64-Vivado.sh
source /opt/PetaLinux/settings.sh

# Upgrade PetaLinux eSDK
# The BSPs for the Kria KR260 and KV260 require the Update1 to be applied 
# to PetaLinux, otherwise the project will not build correctly (if at all).
# Start be sourcing the PetaLinux tools in the host machine environment.
# And upgrade the PetaLinux eSDK with Update1:
# petalinux-upgrade -u http://petalinux.xilinx.com/sswreleases/rel-v2022/sdkupdate/2022.1_update1/ -p "aarch64" --wget-args "--wait 1 -nH --cut-dirs=4"

function build_kria_kr260_boardaware3() {
  local DIR_ORIGIN=$(pwd)
  cd $DIR_PETALINUX_COMMON/Kria_KR260_boardaware3/scripts
  date;time tclsh build_targets.tcl
  cd $DIR_ORIGIN
}

function create_petalinux_project() {
  local DIR_ORIGIN=$(pwd)
  cd $DIR_PETALINUX_COMMON
  # date;time petalinux-create --force --type project -s $HOME/Downloads/xilinx-kr260-starterkit-v2024.2-12072024.bsp --name kr260-sdt-2024-2
  date;time petalinux-create --force --type project -s $HOME/Downloads/xilinx-kr260-starterkit-xsct-v2024.2-12072024.bsp --name kr260-sdt-2024-2
  cd $DIR_ORIGIN
}

 # Import .xsa
function import_xsa() {
  local DIR_ORIGIN=$(pwd)
  cd $DIR_PETALINUX_COMMON/kr260-sdt-2024-2
  time petalinux-config --get-hw-description $DIR_PETALINUX_COMMON/Kria_KR260_boardaware3/syn
  cd $DIR_ORIGIN
}

function build_all() {
  build_kria_kr260_boardaware3
  create_petalinux_project
  import_xsa
}