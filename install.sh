echo "WELCOME TO THE COMPLETE RPI 3 INSTALLER";
echo "INSTALLATION WILL START SHORTLY";

sudo apt-get update --fix-missing
sudo apt-get install totem wireshark aircrack-ng wifite conky wicd blueman figlet android-sdk uget transmission firefox-esr vlc kismet zenmap nmap audacity hydra netsniff-ng gcc g++ make mpg123
sudo apt-get upgrade
sudo apt-get update

sudo figlet Apt-Get Done!

sudo mv RAMup.sh /usr/bin/
sudo chmod +x /usr/bin/RAMup.sh
sudo rmdir /etc/rc.local
sudo mv rc.local /etc/rc.local
sudo figlet RAMup DONE!

sudo cp .conkyrc /home/pi/
sudo cp conky.sh /usr/bin/
sudo cp conky.desktop /etc/xdg/autostart/
sudo figlet CONKY DONE


echo "SET LOGIN PASSWORD";
sudo passwd pi
echo "SET ROOT PASSWORD";
sudo passwd root
echo "DONE";
sudo reboot

