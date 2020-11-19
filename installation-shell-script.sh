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
## Android Studio ##
## Gnome-tweaks ##
## LAMP ##

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

## Android Studio ##

sudo add-apt-repository ppa:maarten-fonville/android-studio

sudo apt-get update

sudo apt-get install android-studio

## Gnome-tweaks ##

sudo apt install gnome-tweaks

## LAMP ##

sudo apt-get install lamp-server^

sudo apt-get install apache2 mysql-server php php-mysql libapache2-mod-php

sudo apt-get install phpmyadmin

sudo apt-get install php-curl php-gd php-mbstring php-mcrypt php-xml php-xmlrpc

echo "<?php phpinfo(); ?>" | sudo tee /var/www/html/test.php

sudo /etc/init.d/apache2 restart

## In your favorite browser, just type: http://localhost/test.php ##
## and will be shown the informations about Apache, PHP, MySQL. ##
## Telling you that everything got right. ##

## To end up ##

sudo apt update && apt list --upgradable && sudo apt upgrade