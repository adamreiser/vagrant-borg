#!/bin/bash

shopt -s dotglob
cp /vagrant/user/.* ~/
shopt -u dotglob

tar -xzf /vagrant/angband/angband-v3.4.1.tar.gz
patch -p0 < /vagrant/angband/main-gcu.c.patch
cd angband-v3.4.1
./configure --with-no-install
make


if [ ! -e ~/.angband/Angband/borg.txt ]; then
    cp src/borg/borg.txt ~/.angband/Angband/
    cd ~/
    patch -p0 < /vagrant/angband/borg.txt.patch
fi
