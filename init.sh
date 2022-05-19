#/bin/bash

#git install
sudo apt-get install git -y

directory = ~/Documents 

# Set the path to the directory where the script is located

cd "~/$directory"
sudo mkdir Build 
cd Build

git clone https://github.com/Winter-py/ubuntu-build.git 

chmod +x ./ubuntu-build/setup.sh
sudo ./ubuntu-build/setup.sh



