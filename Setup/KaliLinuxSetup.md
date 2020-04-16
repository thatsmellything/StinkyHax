https://github.com/thatsmellything/KaliLinuxSetupScript.git

go to this site and run the script with freshInstall()

this script will also udate things and such all for you. Highly recommend going through the file and checking out what it does completely.


if you wanna go slow then follow this

default creds: 
username: root
password: toor

commands:
apt-get update && apt-get upgrade

Fix repos if broken:
nano /etc/apt/sources.list
then add
deb http://http.kali.org/kali kali-rolling main contrib non-free

Download all tools:
apt-get insatll kali-linux-full
apt-get install kali-linux-all

Download alfa wifi adapter drivers:
apt install realtek-rtl88xxau-dkms

Setup SSH:
apt-get install openssh-server
update-rc.d -f ssh remove
update-rc.d -f ssh defaults
cd /etc/ssh/
mkdir backup_insecure_keys
mv ssh_host_* backup_insecure_keys
dpkg-reconfigure openssh-server
nano /etc/ssh/sshd_config
**Change the line permit root login without password to PermitRootLogin: yes
^x Y enter
suder service ssh restart
sudo service ssh restart
update-rc.d -f ssh enable 2 3 4 5

Edit terminal welcome message:
nano /etc/motd

you can visit http://patorjk.com/software/taag to get ascii art