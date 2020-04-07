Unmount the drive first

sudo dd bs=4096 if=(path to iso file).iso of=/dev/disk2 (check to see if this is
the right usb disk)

control t to view progress on mac

How to make a bootable usb with persistence

<https://www.youtube.com/watch?time_continue=142&v=sZSE1hTQ4aQ>

Basically use the universal USB installer to first start it off and make sure it
formats to fat32

Then use a partition resizing program to resize the drive to just about the bare
minimum it needs.

Then use gparted inside of the live usb to format the other partition to ext4
and label it as persistence

Then use a root terminal and type

mkdir -p /mnt/usb

mount /dev/sdb2 /mnt/usb (MAKE SURE THE SDB2 IS THE SAME AS WHAT IS LISTED IN
fdisk -l)

Echo “/ union” \> /mnt/usb/persistence.conf

Boom done and now you just need to boot into persistence mode
