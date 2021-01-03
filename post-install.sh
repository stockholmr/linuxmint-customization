#!/bin/sh

sudo apt purge rhythmbox celluloid thunderbird transmission hexchat
sudo apt autoremove

#Install Enpass
echo "deb https://apt.enpass.io/ stable main" | sudo tee /etc/apt/sources.list.d/enpass.list
wget -O - https://apt.enpass.io/keys/enpass-linux.key | sudo apt-key add -

# Install Spotify
wget -O - https://download.spotify.com/debian/pubkey_0D811D58.gpg | sudo apt-key add -
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list

sudo apt update

sudo apt install guake vlc nodejs npm git enpass spotify-client
