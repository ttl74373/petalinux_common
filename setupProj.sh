source /opt/Xilinx/Vivado/2024.2/.settings64-Vivado.sh




# Upgrade PetaLinux eSDK
# The BSPs for the Kria KR260 and KV260 require the Update1 to be applied 
# to PetaLinux, otherwise the project will not build correctly (if at all).
# Start be sourcing the PetaLinux tools in the host machine environment.
source /opt/Xilinx/PetaLinux/2024./settings.sh
# And upgrade the PetaLinux eSDK with Update1:

# petalinux-upgrade -u http://petalinux.xilinx.com/sswreleases/rel-v2022/sdkupdate/2022.1_update1/ -p "aarch64" --wget-args "--wait 1 -nH --cut-dirs=4"