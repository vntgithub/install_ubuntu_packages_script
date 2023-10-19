#!/bin/bash
# A script to install multiple applications on Ubuntu

# Update the package lists
sudo apt update && sudo apt upgrade

# Install curl
sudo apt install curl

# Install git
sudo apt install git-all

# Install zsh
sudo apt install zsh
chsh -s $(which zsh)

# Add zsh to bashrc 
# sudo nano ~/.bashrc
# Add exec zsh to below

# Install oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install PostgreSQL
# Create the file repository configuration:
sudo sh -c 'echo "deb https://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'

# Import the repository signing key:
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -

# Update the package lists:
sudo apt-get update

# Install the latest version of PostgreSQL.
# If you want a specific version, use 'postgresql-12' or similar instead of 'postgresql':
sudo apt-get -y install postgresql

#Install PgAdmin4

#
# Setup the repository
#

# Install the public key for the repository (if not done previously):
curl -fsS https://www.pgadmin.org/static/packages_pgadmin_org.pub | sudo gpg --dearmor -o /usr/share/keyrings/packages-pgadmin-org.gpg

# Create the repository configuration file:
sudo sh -c 'echo "deb [signed-by=/usr/share/keyrings/packages-pgadmin-org.gpg] https://ftp.postgresql.org/pub/pgadmin/pgadmin4/apt/$(lsb_release -cs) pgadmin4 main" > /etc/apt/sources.list.d/pgadmin4.list && apt update'

#
# Install pgAdmin
#


# Install for desktop mode only:
sudo apt install pgadmin4-desktop

#Install Erlang
sudo apt-get install erlang

#Install Elixir
sudo add-apt-repository ppa:rabbitmq/rabbitmq-erlang
sudo apt update
sudo apt install elixir erlang-dev erlang-xmerl

# Install Hex package manager
mix local.hex

# Install Phoenix framework
mix archive.install hex phx_new

# Verify the installation
elixir -v
mix phx.new --version

# Install Kazam from Sylvain Pineau PPA
sudo apt install kazam

# Install additional packages for keyboard and mouse recording
sudo apt install python3-xlib python3-cairo

# Install ImageMagick from APT repository
sudo apt install imagemagick

