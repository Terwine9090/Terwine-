
echo "install package"
apt update
apt upgrade -y
apt install proot-distro wget -y
apt install x11-repo
apt install xwayland termux-x11-nightly -y
echo "download rootfs"
proot-distro install debian
echo "proot-distro login --user debian --shared-tmp" >> $PREFIX/bin/dn 
echo "proot-distro login debian" >> $PREFIX/bin/dn-r
chmod +x $PREFIX/bin/dn
chmod +x $PREFIX/bin/dn-r
cd $PREFIX/var/lib/proot-distro/installed-rootfs/debian/root
wget https://raw.githubusercontent.com/Terwine9090/Terwine/main/Xfce4.sh
echo "bash Xfce4.sh" >> .bashrc
dn-r
echo "dn -start the debian"
echo "dn-r -start the debian root"
echo "startxfce -to start termux-x11 desktop"
echo "debian -defautl password debian"

