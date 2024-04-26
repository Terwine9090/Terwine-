echo "click to allow"
termux-setup-storage
echo "update and upgrade"
apt update
apt upgrade -y
echo "install package"
apt install wget proot -y
apt install x11-repo
apt install termux-x11-nightly -y
apt install virglrenderer-android -y
apt install pulseaudio -y 
echo "download rootfs"
wget https://github.com/Terwine9090/ubuntu-wine/releases/download/v1.0.0/rootfs.tar.xz
echo "extract rootfs"
tar -xf rootfs.tar.xz
wget https://raw.githubusercontent.com/Terwine9090/ubuntu-wine/main/Proot.sh
rm -rf ubuntu/root/.bashrc
cd ubuntu/opt
echo "download wine"
wget https://github.com/Pi-Apps-Coders/files/releases/download/large-files/wine-9.3.tar.gz
tar -xf wine-9.3.tar.gz
mv wine-9.3 wine
rm -rf wine-9.3.tar.gz
wget https://raw.githubusercontent.com/Terwine9090/ubuntu-wine/main/menu
wget https://raw.githubusercontent.com/Terwine9090/ubuntu-wine/main/wine-stop
cd
echo "creating command"
echo '#!/bin/bash
export WINEPREFIX=~/.wine64
box64 '"/opt/wine/bin/wine "'"$@"' > $HOME/ubuntu/usr/local/bin/wine
chmod +x $HOME/ubuntu/usr/local/bin/wine
echo '#!/bin/bash
export WINEPREFIX=~/.wine64
box64 '"/opt/wine/bin/wineserver "'"$@"' > $HOME/ubuntu/usr/local/bin/wineserver
chmod +x $HOME/ubuntu/usr/local/bin/wineserver
echo "fix audio"
bash Proot.sh apt update
bash Proot.sh apt install pulseaudio -y
rm -rf ubuntu/root/.bashrc
echo "export res=1280x720" >> ubuntu/root/.bashrc
echo "export core=4-7" >> ubuntu/root/.bashrc
echo "export DISPLAY=:0" >> ubuntu/root/.bashrc
echo "bash /opt/menu" >> ubuntu/root/.bashrc
echo "termux-x11 &> /dev/null & bash windroid.sh" >> $PREFIX/bin/winedroid
chmod +x $PREFIX/bin/winedroid
cd 
termux-x11 &> /dev/null &
cd $HOME/ubuntu/root
wget https://raw.githubusercontent.com/Terwine9090/ubuntu-wine/main/wine-util
cd
bash Proot.sh bash wine-util 
rm -rf Proot.sh
wget https://raw.githubusercontent.com/Terwine9090/ubuntu-wine/main/windroid.sh
echo "pulseaudio --start --exit-idle-time=-1
pacmd load-module module-native-protocol-tcp auth-ip-acl=127.0.0.1 auth-anonymous=1" >> .bashrc
echo " to start winedroid to type winedroid"

