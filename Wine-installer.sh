e

wget https://github.com/doitsujin/dxvk/releases/download/v2.1/dxvk-2.1.tar.gz
tar -xvf dxvk-2.1.tar.gz
cd dxvk-2.1
cp x32/* ~/.wine64/drive_c/windows/system32
cp x64/* ~/.wine64/drive_c/windows/syswow64

