apt update
apt upgrade -y
apt install wget proot -y
apt install x11-repo
apt install termux-x11-nightly -y
echo "download rootfs"
wget https://github.com/Terwine9090/ubuntu-wine/releases/download/v1.0.0/rootfs.tar.xz
echo "extract rootfs"
tar -xf rootfs.tar.xz
echo "download wine"
wget https://raw.githubusercontent.com/Terwine9090/ubuntu-wine/main/Proot.sh
rm -rf ubuntu/root/.bashrc
echo 'export DISPLAY=:0
export BOX86_PATH=~/wine/bin/
export BOX86_LD_LIBRARY_PATH=~/wine/lib/wine/i386-unix/:/lib/i386-linux-gnu/:/lib/aarch64-linux-gnu/:/lib/arm-linux-gnueabihf/:/usr/lib/aarch64-linux-gnu/:/usr/lib/arm-linux-gnueabihf/:/usr/lib/i386-linux-gnu/
export BOX64_PATH=~/wine64/bin/
export BOX64_LD_LIBRARY_PATH=~/wine64/lib/i386-unix/:~/wine64/lib/wine/x86_64-unix/:/lib/i386-linux-gnu/:/lib/x86_64-linux-gnu:/lib/aarch64-linux-gnu/:/lib/arm-linux-gnueabihf/:/usr/lib/aarch64-linux-gnu/:/usr/lib/arm-linux-gnueabihf/:/usr/lib/i386-linux-gnu/:/usr/lib/x86_64-linux-gnu' >> ubuntu/root/.bashrc
cd ubuntu/root
wget https://github.com/Pi-Apps-Coders/files/releases/download/large-files/wine-8.14.tar.gz
cd
bash Proot.sh tar -xvf wine-8.14.tar.gz
bash Proot.sh mv wine-8.14 wine64
echo '#!/bin/bash
export WINEPREFIX=~/.wine64
box64 '"/root/wine64/bin/wine "'"$@"' > $HOME/ubuntu/usr/local/bin/wine64
chmod +x $HOME/root/usr/local/bin/wine64
echo "#/bin/bash
cd $HOME
termux-x11 &
bash Proot.sh wine64 explorer /desktop=shell,1280x720 explorer" >> $PREFIX/bin/wine
chmod +x $PREFIX/bin/wine
echo "start wine to type wine and enter"
