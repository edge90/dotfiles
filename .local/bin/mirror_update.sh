#!/usr/bin/zsh

URL="https://www.archlinux.org/mirrorlist/?country=SE&protocol=https&ip_version=4&use_mirror_status=on"

curl -s "${URL}" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist

