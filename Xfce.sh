apt update
apt install sudo wget -y
sudo apt install xfce4 xfce4-whiskermenu-plugin xfce4-terminal -y
echo "export DISPLAY=:1" >> /bin/startxfce
echo "xfce4-session" >> /bin/startxfce
chmod +x /bin/startxfce
