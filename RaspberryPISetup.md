USE THIS
========

apt install whiptail parted lua5.1 alsa-utils psmisc libraspberrypi0
libraspberrypi-dev libraspberrypi-doc libraspberrypi-bin && wget -O
/usr/local/bin/kalipi-config
<https://raw.githubusercontent.com/Re4son/RPi-Tweaks/master/kalipi-config/kalipi-config>

**chmod 755 /usr/local/bin/kalipi-config**

**sudo kalipi-config**

Setup auto login
================

**nano /etc/lightdm/lightdm.conf**

Change these things to on edit them

-   autologin-user=root

-   autologin-user-timeout=0

**nano /etc/pam.d/lightdm-autologin**

Change these things

-   \#auth required pam_succeed_if.so user != root quiet_success

Just comment that out and save

Make sd card bigger
===================

Just donwload gparted and fix it

**apt-get install gparted**

Change kali default pass and ssh keys
=====================================

**passwd**

**dpkg-reconfigure openssh-server**

Install additional packages and tools
=====================================

apt install aptitude curl cmake build-essential mailutils python-dev python-pip
libusb-1.0-0-dev python-numpy htop ftp locate screen kismet pure-ftpd
tigervnc-standalone-server tmux default-mysql-server darkstat ntopng
mana-toolkit beef-xss resolvconf mitmf dnsmasq hostapd

apt install kali-linux-full

If you want just a text version without gui
===========================================

cd /usr/local/src/re4son-kernel_4\*

sudo ./re4son-pi-tft-setup -b cli

Change it back by

cd /usr/local/src/re4son-kernel_4\*

sudo ./re4son-pi-tft-setup -b gui

Enable autologin according to Re4son
====================================

cd /usr/local/src/re4son-kernel_4\*

sudo ./re4son-pi-tft-setup -a pi

Change back

cd /usr/local/src/re4son-kernel_4\*

sudo ./re4son-pi-tft-setup -a disable

More info at
============

<https://whitedome.com.au/re4son/kali-pi/>
