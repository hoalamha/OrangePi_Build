#!/bin/sh

set -e

if ! hash apt-get 2>/dev/null; then
    whiptail --title "Orangepi Build System" --msgbox "This scripts requires a Debian based distrbution. If you not use Debian/Ubunut, pls install:[ bsdtar mtools u-boot-tools pv bc sunxi-tools gcc automake make curl qemu dosfstools ]"
    exit 1
fi

apt-get -y --no-install-recommends --fix-missing install \
    bsdtar mtools u-boot-tools pv bc \
    gcc automake make curl\
    lib32z1 lib32z1-dev qemu-user-static lib32stdc++6\
    dosfstools figlet device-tree-compiler debootstrap
