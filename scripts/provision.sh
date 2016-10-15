#!/bin/bash

apt-get update
apt-get dist-upgrade -y

#apt-get install -y zip build-essential autoconf libncurses5-dev libncursesw5-dev vim

apt-get install -y zip build-essential autoconf libncurses5-dev libncursesw5-dev 
# discretionary
apt-get install -y vim screen


# does need? or just had to autogen.sh again?
    # libncursesw-5



# mkdir /home/vagrant/angband
# mkdir /home/vagrant/angband-install
# ./autogen.sh
#./configure --prefix /home/vagrant/angband-install
