#!/bin/bash
echo "DO NOT RUN AS ROOT OR IT WILL BE IN THE ROOT HOME DIRECTORY AKA /"
cd
mkdir githubtools
cd githubtools
echo "Installing thatsmellythings tools"
sudo git clone https://github.com/thatsmellything/StinkyHax.git
sudo git clone https://github.com/thatsmellything/JaVuls.git

