apt update
apt upgrade -y
apt install wget proot 
echo "download rootfs"
wget https://github.com/Terwine9090/ubuntu-wine/releases/download/v1.0.0/rootfs.tar.xz
echo "extract rootfs"
tar -xf rootfs.tar.xz
echo "download wine"
wget https://raw.githubusercontent.com/Terwine9090/ubuntu-wine/main/Proot.sh
rm -rf ubuntu/root/.bashrc
