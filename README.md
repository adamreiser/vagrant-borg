# Vagrant Angband Borg

![Angband Borg screenshot](https://github.com/adamreiser/vagrant-borg/blob/master/screenshot.png)

## What is it?
Angband is a roguelike game.

The Borg is an automatic Angband player.

Vagrant is an environment manager that is used here to create a virtual machine for running the Angband Borg.

## Requirements

- VirtualBox

## Usage
```bash
vagrant up; vagrant ssh
angband-v3.4.1/src/angband
```
- Create a character, enter the borg prompt by typing a caret (^), then z. Then enter a borg command.

## Notes

The profile directory is synced to the virtual machine's ~/.angband directory. It will be populated with angband/borg.txt when the environment is provisioned, if it doesn't exist.

## Patches

The following patches are applied during provisioning:
- main-gcu.c: use '#' to represent walls instead of solid colors
- borg.txt: initial borg configs

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
