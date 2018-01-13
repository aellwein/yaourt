#!/bin/sh
cwd="$(pwd)"
cd /tmp
git clone https://aur.archlinux.org/package-query.git
git clone https://aur.archlinux.org/yaourt.git
cd package-query
makepkg -si
cd ../yaourt
makepkg -si
cd ..
rm install.sh
cd ${cwd}

