echo "WELCOME TO THE COMPLETE RPI 3 INSTALLER";
echo "INSTALLATION WILL START SHORTLY";

sudo apt-get update --fix-missing
sudo apt-get install totem wireshark vlc aircrack-ng wifite conky wicd blueman uget transmission firefox-esr zenmap nmap audacity hydra netsniff-ng
sudo apt-get upgrade
sudo apt-get update

echo "APT-GET DONE";

sudo mv Hardware/RAMup.sh /usr/bin/
sudo chmod +x /usr/bin/RAMup.sh

sudo cp hardware/.conkyrc /home/pi/
sudo cp hardware/conky.sh /usr/bin/
sudo cp hardware/conky.desktop /etc/xdg/autostart/
echo "CONKY DONE";

# RAMup DONE
echo "SET LOGIN PASSWORD";
sudo passwd pi
echo "SET ROOT PASSWORD";
sudo passwd root
echo "DONE";
sudo reboot

