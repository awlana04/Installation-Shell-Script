#!/bin/bash

## To run this script you have to, first of all, go to the folder where is it.##
## for example, if it is in dowloands in a folder called installation-shell-script ##
## and supposing that you're at the home folder in your terminal ##
## cd Downloads/installation-shell-script/ ##
## ./installation-shell-script.sh ##

## Applications that will be installed ##

## Snapd ##
## Spotify ##
## VLC ##
## Yarn ##
## Node ##
## Insomnia ##
## Beekeeper ##
## Android Studio ##
## Gnome-tweaks ##

## To update and upgrade your system before continue ##

sudo apt update && apt list --upgradable && sudo apt upgrade

## Linuxs based on debian versions less than 20.04 ##
sudo apt-get update && sudo apt-get upgrade

## Snapd ##

sudo apt install snapd

## Install Spotify ##

sudo snap install spotify

## Install VLC ##

sudo apt install VLC

## Install Yarn ##

curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -

echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

sudo apt-get update && sudo apt-get install yarn

yarn --version

## Node ##

curl -sL https://deb.nodesource.com/setup_15.x | sudo -E bash -

sudo apt install -y nodejs

## Insomnia ##

sudo snap install insomnia

sudo snap refresh insomnia

## Beekeeper ##

sudo snap install beekeeper-studio

sudo snap refresh beekeeper-studio

## Android Studio ##

sudo add-apt-repository ppa:maarten-fonville/android-studio

sudo apt-get update

sudo apt-get install android-studio

## Gnome-tweaks ##

sudo apt install gnome-tweaks

## To end up ##

sudo apt update && apt list --upgradable && sudo apt upgrade

## Linuxs based on debian versions less than 20.04 ##
sudo apt-get update && sudo apt-get upgrade