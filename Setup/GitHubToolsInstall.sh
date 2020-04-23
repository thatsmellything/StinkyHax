#!/bin/bash
echo "DO NOT RUN AS ROOT OR IT WILL BE IN THE ROOT HOME DIRECTORY AKA /"
cd
mkdir githubtools
cd githubtools
echo "Installing thatsmellythings tools"
sudo git clone https://github.com/thatsmellything/StinkyHax.git
sudo git clone https://github.com/thatsmellything/JaVuls.git
echo "Installing WiFi-Pumpkin with GUI"
git clone https://github.com/P0cL4bs/WiFi-Pumpkin-deprecated.git
cd WiFi-Pumpkin-deprecated
sudo chmod +x installer.sh
echo "dont leave just yet you will need to answer some questions"
./installer.sh --install


