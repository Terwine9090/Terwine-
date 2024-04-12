apt update
apt upgrade -y
apt install wget proot -y
apt install x11-repo
apt install termux-x11-nightly -y
apt install virglrenderer-android -y
apt install pulseaudio -y 
echo "download rootfs"
wget https://github.com/Terwine9090/ubuntu-wine/releases/download/v1.0.0/rootfs.tar.xz
echo "extract rootfs"
tar -xf rootfs.tar.xz
echo "download wine"
wget https://raw.githubusercontent.com/Terwine9090/ubuntu-wine/main/Proot.sh
rm -rf ubuntu/root/.bashrc
cd ubuntu/root
wget https://github.com/Pi-Apps-Coders/files/releases/download/large-files/wine-8.14.tar.gz
cd
bash Proot.sh tar -xvf wine-8.14.tar.gz
bash Proot.sh mv wine-8.14 wine64
echo '#!/bin/bash
export WINEPREFIX=~/.wine64
box64 '"/root/wine64/bin/wine "'"$@"' > $HOME/ubuntu/usr/local/bin/wine
chmod +x $HOME/ubuntu/usr/local/bin/wine
apt install proot-distro -y
cd $PREFIX/var/lib
mkdir proot-distro 
cd proot-distro 
mkdir installed-rootfs
cd installed-rootfs
cd
mv ubuntu $PREFIX/var/lib/proot-distro/installed-rootfs
echo "virgl_test_server_android & pd login ubuntu --shared-tmp" >> $PREFIX/bin/ubuntu
chmod +x $PREFIX/bin/ubuntu
wget https://raw.githubusercontent.com/Terwine9090/ubuntu-wine/main/menu
rm -rf $PREFIX/var/lib/proot-distro/installed-rootfs/ubuntu/root/.bashrc
mv menu $PREFIX/var/lib/proot-distro/installed-rootfs/ubuntu/root/.bashrc
cd
echo "pulseaudio --start --exit-idle-time=-1
pacmd load-module module-native-protocol-tcp auth-ip-acl=127.0.0.1 auth-anonymous=1" >> .bashrc
