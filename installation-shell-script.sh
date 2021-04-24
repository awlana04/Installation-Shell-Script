#!/bin/bash

## To run this script you have to, first of all, go to the folder where is it##
## for example, if it is in dowloands in a folder called installation-shell-script ##
## and supposing that you're at the home folder in your terminal ##
## cd Downloads/installation-shell-script/ ##
## ./installation-shell-script.sh ##

## Applications that will be installed ##

## VLC ##
## Chromium ##
## Node ##
## Yarn ##
## JDK ##
## Docker ##
## Docker Compose ##
## Vim ##
## qBittorrent ##
## Gnome-tweaks ##

## To update and upgrade your system before continue ##

sudo apt update && sudo apt full-upgrade

## Linuxs based on debian versions less than 20.04 ##
## sudo apt-get update && sudo apt-get upgrade ##

## Install VLC ##

sudo apt install vlc

## Chromium ##

sudo add-apt-repository ppa:xalt7x/chromium-deb-vaapi

cat <<EOF | sudo tee /etc/apt/preferences.d/pin-xalt7x-chromium-deb-vaapi
Package: *
Pin: release o=LP-PPA-xalt7x-chromium-deb-vaapi
Pin-Priority: 1337
EOF

sudo apt-get update

sudo apt install chromium-browser chromium-codecs-ffmpeg

## Node ##

curl -sL https://deb.nodesource.com/setup_15.x | sudo -E bash -

sudo apt install -y nodejs

## Install Yarn ##

curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -

echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

sudo apt update && sudo apt-get install yarn

## JDK ##

sudo add-apt-repository ppa:openjdk-r/ppa

sudo apt update

sudo apt install openjdk-8-jdk

## Graphic libraries ##

sudo apt-get install gcc-multilib lib32z1 lib32stdc++6

## Docker ##

sudo apt update

sudo apt install apt-transport-https ca-certificates curl software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"

sudo apt update

apt-cache policy docker-ce

sudo apt install docker-ce

sudo systemctl status docker

## The next commands will be just for only if you want to use Docker without sudo ##

sudo usermod -aG docker ${USER}

su - ${USER}

id -nG

## Docker Compose ##

sudo curl -L "https://github.com/docker/compose/releases/download/1.28.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose

sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

sudo curl -L https://raw.githubusercontent.com/docker/compose/1.28.2/contrib/completion/bash/docker-compose -o /etc/bash_completion.d/docker-compose

## Vim ##

sudo apt update

sudo apt install vim

## qBittorrent ##

sudo add-apt-repository ppa:qbittorrent-team/qbittorrent-stable

sudo apt update

sudo apt install qbittorrent

## Gnome-tweaks ##

sudo apt install gnome-tweaks

## To end up ##

sudo apt update && apt list --upgradable && sudo apt upgrade

## Linuxs based on debian versions less than 20.04 ##
## sudo apt-get update && sudo apt-get upgrade ##