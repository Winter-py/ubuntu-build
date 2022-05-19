sudo apt-get update -y
sudo apt-get upgrade -y

#Development Stuff
sudo apt-get install python -y
sudo apt install software-properties-common apt-transport-https wget -y
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add - 
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" 
sudo apt install code -y


#Network Tools 
sudo apt-get install net-tools -y
sudo apt-get install netdiscover -y
sudo apt-get install nmap -y

#Install brave browser 

sudo apt install apt-transport-https curl -y    

sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg 

echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list

sudo apt update 

sudo apt install brave-browser -y

