echo "your install dxvk to type the version"
echo "2.3.1"
echo "2.3"
echo "2.2"
echo "2.1"
echo "2.0"
echo "1.10.3"
echo "1.10.2"
echo "1.10.1"
read -p ":" version
wine wineboot
wget https://github.com/doitsujin/dxvk/releases/download/v${version}/dxvk-${version}.tar.gz
tar -xvf dxvk-${version}.tar.gz
cd dxvk-${version}
cp x32/* ~/.wine64/drive_c/windows/system32
cp x64/* ~/.wine64/drive_c/windows/syswow64

echo "clean"
rm -rf dxvk-2.1.tar.gz
rm -rf wine-9.3.tar.gz
