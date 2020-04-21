#!/bin/bash



# Check for less utility and install if needed:

dpkg -l | grep -qw less || sudo apt install less -yyq

# Set BASH to quit script and exit on errors:

set -e

# Functions:

nmapsetup() {
echo "downloading nmap scripts for vulnerabilities in db"
cd /usr/share/nmap/scripts
git clone https://github.com/VulnersCom/nmap-vulners.git
git clone https://github.com/scipag/vulscan.git
cd /usr/share/nmap/scripts/vulscan/utilities/updater/
chmod +x updateFiles.sh
echo "updating files"
./updateFiles.sh
}

fimac() {
echo "Changing sources.list"
echo "deb http://http.kali.org/kali kali-rolling main contrib non-free" >> /etc/apt/sources.list
echo "Updating system"
sudo apt-get update
echo "Installing geany"
apt-get install geany -yy
echo "Installing the alpha wifi drivers"
apt install realtek-rtl88xxau-dkms
echo "downloading nmap scripts for vulnerabilities in db"
cd /usr/share/nmap/scripts
git clone https://github.com/VulnersCom/nmap-Vulners.git
git clone https://github.com/scipag/vulscan.git
cd
cd /usr/share/nmap/scripts/vulscan/utilities/updater/
chmod +x updateFiles.sh
echo "updating files"
./updateFiles.sh
echo "Changing the default SSH keys"
apt-get install openssh-server
update-rc.d -f ssh remove
update-rc.d -f ssh defaults
echo "making backup folder for insecure keys called backup_insecure_keys"
mkdir /etc/ssh/backup_insecure_keys
echo "moving insecure keys now"
cd /etc/ssh/
mv /etc/ssh/ssh_host_* backup_insecure_keys
echo "creating new keys"
dpkg-reconfigure openssh-server
echo "Making root viable to login"
echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
echo "restarting ssh service"
sudo service ssh restart
echo "making sure ssh survives reboot"
update-rc.d -f ssh enable 2 3 4 5
echo "Installing kali linux full"
apt-get install kali-linux-full -yy
echo "Installing kali linux all"
apt-get install kali-linux-all -yy
echo "downloading your notes"
cd Desktop
git clone https://github.com/thatsmellything/StinkyHax.git
echo "upgrading the entire system"
apt-get upgrade -yy
echo "--------------------------------------------------------"
echo "|system should be good to go :)                        |"
echo "|reboot may be needed for graphics cards to take effect|"
echo "--------------------------------------------------------"
}

fipc() {
echo "Changing sources.list"
echo "deb http://http.kali.org/kali kali-rolling main contrib non-free" >> /etc/apt/sources.list
echo "Updating system"
sudo apt-get update
echo "Installing geany"
apt-get install geany -yy
echo "Installing the alpha wifi drivers"
apt install realtek-rtl88xxau-dkms
echo "installing gts 450 graphics drivers"
echo "If your system is running a newer graphics card you may want to install them yourself via apt-get install nvidia-driver"
apt-get install nvidia-legacy-390xx-driver -yy
apt-get install nvidia-legacy-390xx-smi
apt-get install nvidia-legacy-390xx-opencl-icd -yy
echo "downloading nmap scripts for vulnerabilities in db"
cd /usr/share/nmap/scripts
git clone https://github.com/VulnersCom/nmap-Vulners.git
git clone https://github.com/scipag/vulscan.git
cd /usr/share/nmap/scripts/vulscan/utilities/updater/
chmod +x updateFiles.sh
echo "updating files"
./updateFiles.sh
echo "Changing the default SSH keys"
cd
apt-get install openssh-server
update-rc.d -f ssh remove
update-rc.d -f ssh defaults
echo "making backup folder for insecure keys called backup_insecure_keys"
mkdir /etc/ssh/backup_insecure_keys
echo "moving insecure keys now"
cd /etc/ssh/
mv /etc/ssh/ssh_host_* backup_insecure_keys
echo "creating new keys"
dpkg-reconfigure openssh-server
echo "Making root viable to login"
echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
echo "restarting ssh service"
sudo service ssh restart
echo "making sure ssh survives reboot"
update-rc.d -f ssh enable 2 3 4 5
echo "Installing kali linux full"
apt-get install kali-linux-full -yy
echo "Installing kali linux all"
apt-get install kali-linux-all -yy
echo "downloading your notes"
cd Desktop
git clone https://github.com/thatsmellything/StinkyHax.git
echo "upgrading the entire system"
apt-get upgrade -yy
echo "--------------------------------------------------------"
echo "|system should be good to go :)                        |"
echo "|reboot may be needed for graphics cards to take effect|"
echo "--------------------------------------------------------"
}

updatessh() {
echo "Changing the default SSH keys"
apt-get install openssh-server
update-rc.d -f ssh remove
update-rc.d -f ssh defaults
echo "making backup folder for insecure keys called backup_insecure_keys"
mkdir /etc/ssh/backup_insecure_keys
echo "moving insecure keys now"
cd /etc/ssh/
mv /etc/ssh/ssh_host_* backup_insecure_keys
echo "creating new keys"
dpkg-reconfigure openssh-server
echo "Making root viable to login"
echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
nano /etc/ssh/sshd_config
echo "restarting ssh service"
sudo service ssh restart
echo "making sure ssh survives reboot"
update-rc.d -f ssh enable 2 3 4 5
}

test() {
	echo "Making root viable to login"
echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
}


upc() {
echo "Updating system"
sudo apt-get update
echo "Installing geany"
apt-get install geany -yy
echo "Installing the alpha wifi drivers"
apt install realtek-rtl88xxau-dkms
echo "installing gts 450 graphics drivers"
echo "If your system is running a newer graphics card you may want to install them yourself via apt-get install nvidia-driver"
apt-get install nvidia-legacy-390xx-driver -yy
apt-get install nvidia-legacy-390xx-smi
apt-get install nvidia-legacy-390xx-opencl-icd -yy
echo "downloading nmap scripts for vulnerabilities in db"
cd /usr/share/nmap/scripts
git clone https://github.com/VulnersCom/nmap-Vulners.git
git clone https://github.com/scipag/vulscan.git
cd /usr/share/nmap/scripts/vulscan/utilities/updater/
chmod +x updateFiles.sh
echo "updating files"
./updateFiles.sh
echo "Installing kali linux full"
apt-get install kali-linux-full -yy
echo "Installing kali linux all"
apt-get install kali-linux-all -yy
echo "upgrading the entire system"
apt-get upgrade -yy
echo "--------------------------------------------------------"
echo "|system should be good to go :)                        |"
echo "|reboot may be needed for graphics cards to take effect|"
echo "--------------------------------------------------------"
}

upc() {
echo "Updating system"
sudo apt-get update
echo "Installing geany"
apt-get install geany -yy
echo "Installing the alpha wifi drivers"
apt install realtek-rtl88xxau-dkms
echo "downloading nmap scripts for vulnerabilities in db"
cd /usr/share/nmap/scripts
git clone https://github.com/VulnersCom/nmap-Vulners.git
git clone https://github.com/scipag/vulscan.git
cd /usr/share/nmap/scripts/vulscan/utilities/updater/
chmod +x updateFiles.sh
echo "updating files"
./updateFiles.sh
echo "Installing kali linux full"
apt-get install kali-linux-full -yy
echo "Installing kali linux all"
apt-get install kali-linux-all -yy
echo "upgrading the entire system"
apt-get upgrade -yy
echo "--------------------------------------------------------"
echo "|system should be good to go :)                        |"
echo "|reboot may be needed for graphics cards to take effect|"
echo "--------------------------------------------------------"
}

clean() {

echo "Removing apt cache packages that can no longer be downloaded..."
sudo apt autoclean

}

remove() {

echo "Removing orpahned packages..."
sudo apt autoremove -yy

}

leave() {

echo "--------------------"
echo "- Update Complete! -"
echo "--------------------"
exit

}

up_help() {

less << _EOF_
 Up is a tool that automates the update procedure for Debian and Ubuntu based
 Linux systems.
 Press "q" to exit this Help page.
 Commands:
    updateTool = full system update.
    
    updateTool --freshinstall = update sources.list automatically,downloads all kali linux repos, full system update, full system upgrade, automatic driver installation, automatic ssh configuration.
    updateTool --update = does the freshinstall except for changing the sources.list and the ssh reconfig
	updateTool --updatessh = creates new folder for old ssh keys and then creates a new set of keys. Also makes ssh run consistently even after reboot.
    Adding the "--clean" option will invoke the apt commands to search for and
    remove locally cached packages that are no longer in the repositories and
    remove orphaned packages that are no longer needed by programs. 
    The "--remove" option only removes orphaned packages, leaving the apt cache
    alone. 
    up --help = shows this help page.
 By Jensen Judkins aka thatsmellything
 
 Disclaimer:
 THIS SOFTWARE IS PROVIDED BY Jensen Judkins “AS IS” AND ANY EXPRESS OR IMPLIED
 WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
 MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO
 EVENT SHALL EZEELINUX BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR
 BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER
 IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
 ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 POSSIBILITY OF SUCH DAMAGE.
_EOF_

}

# Execution.

# Tell 'em who we are...

echo "Up -- Debian/Ubuntu Update Tool (Version 1.2)"

#Fresh Kali Install
if [ "$1" == "--fipc" ]; then
    fipc
    
    
    leave
fi
#Fresh Kali Install
if [ "$1" == "--fimac" ]; then
    fimac
    
    
    leave
fi

#Fresh Kali Install
if [ "$1" == "--umac" ]; then
    umac
    
    
    leave
fi

#Nmap setup
if [ "$1" == "--nmapsetup" ]; then
    nmapsetup
    
    
    leave
fi

if [ "$1" == "--nmapscan" ]; then
    nmapscan
    
    
    leave
fi


#Test things here
if [ "$1" == "--test" ]; then
    test
    
    
    leave
fi

#Update SSH
if [ "$1" == "--updatessh" ]; then
    updatessh
    
    
    leave
fi

#Update but not a fresh install
if [ "$1" == "--upc" ]; then
    upc
    
    
    leave
fi

# Update and clean:

if [ "$1" == "--clean" ]; then
    update
    remove
    clean
    leave
fi

# Update and remove orphaned packages:

if [ "$1" == "--remove" ]; then
    update
    remove
    leave
fi

if [ "$1" == "--help" ]; then
    up_help
    exit
fi

# Check for invalid argument

if  [ -n "$1"  ]; then
    echo "Up Error: Invalid argument. Try 'up --help' for more info." >&2
    exit 1
fi


leave


