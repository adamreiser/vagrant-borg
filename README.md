# Vagrant Angband Borg

![Angband Borg screenshot](https://github.com/adamreiser/vagrant-borg/blob/master/screenshot.png)

## What is it?
Angband is a roguelike game.

The Borg is an automatic Angband player.

Vagrant is an environment manager that is used here to create a virtual machine for running the Angband Borg.

## Requirements

- VirtualBox
- Vagrant

## Usage
```bash
vagrant up; vagrant ssh
angband-3.4.1/src/angband
```
- Create a character, enter the borg prompt by typing a caret (^), then z. Then enter a borg command (z to start the borg).
- Alternatively, run angband with the patched-in '-b' option to start the borg
automatically. It will create a new character of the previous type if no
character exists. If there is no previous type, the borg will begin after
character generation.
- Once the borg is running, press any key to pause it and resume interactive
mode. This can sometimes take a while if the borg is busy.
- Finally, /vagrant/angband/run.sh will attempt to run the borg forever,
restarting as needed. This will also trap ctrl-c interrupts to break the
loop, after which you can exit normally.

## Notes

The profile directory is synced to the virtual machine's /home/vagrant/.angband directory. It contains the active game data, and must also contain Angband/borg.txt, which is added during provisioning.

## Patches

The following patches are applied during provisioning:
- main-gcu.c: use '#' to represent walls instead of solid colors
- borg.txt: initial borg configs
- borg7.c: temporary fix for inventory selection loop (can still loop
but does so less)
- borg_autorun/: add a '-b' option to jump straight into borg mode

## Borg command list
```
'z' activates the Borg
'u' updates the Borg
'x' steps the Borg
'f' modifies the normal flags
'c' modifies the cheat flags
'l' activates a log file
's' activates search mode
'i' displays grid info
'g' displays grid feature
'a' displays avoidances
'k' displays monster info
't' displays object info
'%' displays targetting flow
'#' displays danger grid
'_' Regional Fear info
'p' Borg Power
'1' change max depth
'2' level prep info
'3' Feature of grid
'!' Time
'@' Borg LOS
'w' My Swap Weapon
'q' Auto stop on level
'v' Version stamp
'd' Dump spell info
'h' Borg_Has function
'$' Reload Borg.txt
'y' Last 75 steps
'm' money Scum
'^' Flow Pathway
'R' Respawn Borg
'o' Object Flags
'r' Restock Stores
```
