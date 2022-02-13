#!/bin/bash

red=$'\e[1;31m';

if [[ "$(whoami)" != root ]]; then
echo "${red}You must be root first with the sudo su command!!!"
	exit 0
fi

echo "###############################################################################"
echo "###                             STARTING...                                 ###"
echo "###############################################################################"

sudo pacman-key --init

sudo pacman-key --populate

sudo pacman-key --populate archlinux

sudo pacman -Sc
sudo pacman -Scc

sudo pacman -Sy

echo "###############################################################################"
echo "###                               DONE                                     ####"
echo "###############################################################################"