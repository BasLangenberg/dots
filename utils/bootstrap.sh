#!/bin/bash

# Based on https://github.com/LukeSmithxyz/LARBS/blob/master/src/arch.sh

pacman -S --noconfirm dialog || (echo "Error at script start: Are you sure you're running this as the root user? Are you sure you have an internet connection?" && exit)
RED='\033[0;31m'
BLUE='\033[0;34m'
NC='\033[0m'

dialog --defaultno --title "Install Arch Linux" --yesno "This script installs an Arch base system unattended.\n\nIt will wipe your /dev/sda and is meant to be ran in Virtualbox\n\nDo not run on a system with data you are not willing to delete FOREVER\n\nTwitter: @BasLangenberg"  15 60 || exit
dialog --no-cancel --inputbox "Enter a name for your computer." 10 60 2> comp
dialog --no-cancel --inputbox "Enter partitionsize in gb, separated by space (swap & root)." 10 60 2>psize

IFS=' ' read -ra SIZE <<< $(cat psize)
re='^[0-9]+$'

if ! [ ${#SIZE[@]} -eq 2 ] || ! [[ ${SIZE[0]} =~ $re ]] || ! [[ ${SIZE[1]} =~ $re ]] ; then
    SIZE=(12 25);
fi

timedatectl set-ntp true

curl http://utils.homecooked.nl/mirrorlist > /etc/pacman.d/mirrorlist

cat <<EOF | fdisk /dev/sda
o
n
p


+200M
n
p


+${SIZE[0]}G
n
p


+${SIZE[1]}G
n
p


w
EOF

partprobe

mkfs.ext4 -F /dev/sda4
mkfs.ext4 -F /dev/sda3
mkfs.ext4 -F /dev/sda1
mkswap /dev/sda2
swapon /dev/sda2
mount /dev/sda3 /mnt
mkdir /mnt/boot
mount /dev/sda1 /mnt/boot
mkdir /mnt/home
mount /dev/sda4 /mnt/home

pacstrap /mnt base base-devel

genfstab -U /mnt >> /mnt/etc/fstab

curl http://utils.homecooked.nl/chroot.sh > /mnt/chroot.sh && arch-chroot /mnt bash chroot.sh && rm /mnt/chroot.sh

cat comp > /mnt/etc/hostname && rm comp

dialog --defaultno --title "Provision userspace" --yesno "Base system should be provisioned now\n\nDo you want to provision Bas' desktop config?"  8 30 && curl http://utils.homecooked.nl/ansible.sh > /mnt/ansible.sh && arch-chroot /mnt bash ansible.sh && rm /mnt/ansible.sh

dialog --defaultno --title "Final Qs" --yesno "Eject CD/ROM (if any)?"  5 30 && eject
dialog --defaultno --title "Final Qs" --yesno "Reboot computer?"  5 30 && reboot
dialog --defaultno --title "Final Qs" --yesno "Return to chroot environment?"  6 30 && arch-chroot /mnt
clear 
