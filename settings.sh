echo "[1]core"
echo "[2]resolution"
echo "[3]install dxvk"
read -p ":" setting 
if (( $setting == "1" ));
        then
            read -p ":" core
            rm -rf /opt/core.sh
            echo "export core=$core" >> /opt/core.sh
        elif (( $setting == "2" ));
        then
            read -p ":" res
            rm -rf /opt/res.sh
            echo "export res=$res" >> /opt/res.sh
            source ~/.bashrc
        elif (( $setting== "3" ));
        then
           wine wineboot
           wget https://raw.githubusercontent.com/Terwine9090/ubuntu-wine/main/Wine-installer.sh && bash Wine-installer.sh
        else
            exit
        fi
