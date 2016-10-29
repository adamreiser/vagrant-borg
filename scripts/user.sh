#!/bin/bash

# Copy local configs
shopt -s dotglob
cp /vagrant/user/.* ~/
shopt -u dotglob
#

# Download and verify angband
if ! -e v3.4.1.tar.gz; then
    wget https://github.com/angband/angband/archive/v3.4.1.tar.gz
fi

if ! sha256sum -c /vagrant/angband/SHASUMS; then
    exit 1
fi
#

# Prepare for patching
tar -xzf v3.4.1.tar.gz

if [ ! -e ~/.angband/Angband/borg.txt ]; then
    cp angband-3.4.1/src/borg/borg.txt ~/.angband/Angband/
fi
#

# Patch source and borg.txt
for file in /vagrant/angband/*.patch; do
    patch -p0 < "$file"
done

for file in /vagrant/angband/borg_autorun/*.patch; do
    patch -p0 < "$file"
done
#

# Build angband
cd angband-3.4.1
./autogen.sh
./configure --with-no-install
make
#
