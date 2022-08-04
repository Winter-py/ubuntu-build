sudo apt-get update -y
sudo apt-get upgrade -y

#Development Stuff
sudo apt-get install python -y
sudo apt install python3-pip -y
pip install boto3

sudo apt install software-properties-common apt-transport-https wget -y
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add - 
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" 
sudo apt install code -y
sudo apt install python3-pip -y
sudo apt install packer -y

#Terraform install
sudo apt-get update && sudo apt-get install -y gnupg software-properties-common 

wget -O- https://apt.releases.hashicorp.com/gpg | \
    gpg --dearmor | \
    sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg

gpg --no-default-keyring \
    --keyring /usr/share/keyrings/hashicorp-archive-keyring.gpg \
    --fingerprint

echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] \
    https://apt.releases.hashicorp.com $(lsb_release -cs) main" | \
    sudo tee /etc/apt/sources.list.d/hashicorp.list

sudo apt update
sudo apt-get install terraform -y


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

# Time Zone
echo "Europe/London" | sudo tee /etc/timezone
Europe/London
sudo dpkg-reconfigure --frontend noninteractive tzdata

# Customisation
sudo apt-get install gnome-tweak-tool -y

sudo apt-get install gstreamer1.0-libav


wget https://github.com/iabem97/komorebi/releases/download/v2.0/komorebi-2-64-bit.deb
sudo apt-get install gdebi -y
sudo gdebi komorebi-2-64-bit.deb -y
git clone https://github.com/iabem97/komorebi.git
cd komorebi
mkdir build && cd build 
cmake .. && sudo make install 

