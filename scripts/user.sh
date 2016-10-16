#!/bin/bash

shopt -s dotglob
cp /vagrant/user/.* ~/
shopt -u dotglob

if ! -e v3.4.1.tar.gz; then
    wget https://github.com/angband/angband/archive/v3.4.1.tar.gz
fi

if ! sha256sum -c /vagrant/angband/SHASUMS; then
    exit 1
fi

tar -xzf v3.4.1.tar.gz

patch -p0 < /vagrant/angband/main-gcu.c.patch
cd angband-3.4.1
./autogen.sh
./configure --with-no-install
make

if [ ! -e ~/.angband/Angband/borg.txt ]; then
    cp src/borg/borg.txt ~/.angband/Angband/
    cd ~/
    patch -p0 < /vagrant/angband/borg.txt.patch
fi
