export DISPLAY=:0
export BOX64_PATH=~/wine64/bin/
export BOX64_LD_LIBRARY_PATH=~/wine64/lib/i386-unix/:~/wine64/lib/wine/x86_64-unix/:/lib/i386-linux-gnu/:/lib/x86_64-linux-gnu:/lib/aarch64-linux-gnu/:/lib/arm-linux-gnueabihf/:/usr/lib/aarch64-linux-gnu/:/usr/lib/arm-linux-gnueabihf/:/usr/lib/i386-linux-gnu/:/usr/lib/x86_64-linux-gnu
wine wineboot -u
wget https://github.com/doitsujin/dxvk/releases/download/v2.1/dxvk-2.1.tar.gz
tar -xvf dxvk-2.1.tar.gz
cp x32/* ~/.wine64/drive_c/windows/system32
cp x64/* ~/.wine64/drive_c/windows/syswow64
exit
