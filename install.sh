echo "WELCOME TO THE COMPLETE RPI 3 INSTALLER";
echo "INSTALLATION WILL START SHORTLY";

sudo apt-get update --fix-missing
sudo apt-get install totem wireshark aircrack-ng wifite conky wicd blueman figlet uget transmission firefox-esr vlc kismet zenmap nmap audacity hydra netsniff-ng gcc g++ make mpg123 -y
sudo apt-get upgrade -y
sudo apt-get update -y
sudo apt-get autoremove -y

sudo figlet Apt-Get Done!
clear

sudo mv RAMup.sh /usr/bin/
sudo chmod +x /usr/bin/RAMup.sh
sudo rmdir /etc/rc.local
sudo mv rc.local /etc/rc.local
sudo figlet RAMup DONE!
clear

sudo cp .conkyrc /home/pi/
sudo cp conky.sh /usr/bin/
sudo cp conky.desktop /etc/xdg/autostart/
sudo figlet CONKY DONE
clear

echo "ENTER HOSTNAME : $2"
sudo hostnamectl set-hostname $2
echo "SET LOGIN PASSWORD";
sudo passwd pi
echo "SET ROOT PASSWORD";
sudo passwd root
echo "DONE";
echo "Would you like to reboot now? : $answer"
if ["$answer" == y]; then
    sudo reboot
else 
    exit 0
fi


