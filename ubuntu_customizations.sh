#DOCK
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize-or-overview'
#WIFI
sudo modprobe -r rtl8723be
sudo modprobe rtl8723be ant_sel=1
iwlist scan | egrep -i 'ssid|quality'
echo "options rtl8723be ant_sel=1" | sudo tee /etc/modprobe.d/rtl8723be.conf
#NumLockFix
sudo -i
xhost +SI:localuser:gdm
su gdm -s /bin/bash
gsettings set org.gnome.settings-daemon.peripherals.keyboard numlock-state 'on'
gsettings set org.gnome.desktop.peripherals.touchpad tap-to-click true

#get AMDGPU
sudo nano /etc/default/grub
# radeon.cik_support=0 amdgpu.cik_support=1 radeon.si_support=0 amdgpu.si_support=1
sudo nano /etc/modprobe.d/amdgpu.conf
# options amdgpu si_support=1
# options amdgpu cik_support=1
sudo nano /etc/modprobe.d/radeon.conf
# options radeon si_support=0
# options radeon cik_support=0
sudo update-grub2
# If system/Linux didn't come up, Just edit the grub in the startup by pressing E, and delete the added part, and press CTRL + X to start with edited grub.

#Vulkan
wget -qO - http://packages.lunarg.com/lunarg-signing-key-pub.asc | sudo apt-key add -
sudo wget -qO /etc/apt/sources.list.d/lunarg-vulkan-1.2.135-bionic.list http://packages.lunarg.com/vulkan/1.2.135/lunarg-vulkan-1.2.135-bionic.list
sudo apt update
sudo apt install vulkan-sdk

xrandr --listproviders
xrandr --setprovideroffloadsink 1 0
export DRI_PRIME=1
