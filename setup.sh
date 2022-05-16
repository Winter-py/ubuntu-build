sudo apt-get update
sudo apt-get upgrade

#Development Stuff
sudo apt install git -y
sudo apt-get install python -y

#Network Tools 
sudo apt-get install net-tools -y
sudo apt-get install netdiscover -y
sudo apt-get install nmap -y

#Install brave browser 

sudo apt install apt-transport-https curl

sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list

sudo apt update

sudo apt install brave-browser -y

