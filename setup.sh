#!/bin/bash

# Command line (all as one, you'll want them all anyway...)
brew install wget openssl pkg-config zlib awscli iperf3

# Oh My ZSH
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Python
brew install python@3.9

# "bUt lInKiNg PyThOn 3 aS python mIgHt BrEak ParTs oF macOS!!"
# If you still need python2 in 2022 that's your fault.
# I would rather die before considering using pyenv.
ln -s /usr/local/bin/python3.9 /usr/local/bin/python

# Brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Some --cask installs require password.
# Do not just paste all these as a block before doing `sudo whoami` and authenticating first

# Desktop apps (Development)
brew install --cask visual-studio-code
brew install --cask sequel-ace
brew install --cask android-studio
brew install --cask serial
brew install --cask docker
brew install --cask vmware-fusion
brew install --cask wireshark
brew install --cask jetbrains-toolbox
brew install --cask hex-fiend
brew install --cask postman

# Desktop apps (Social/Comms/Fun)
brew install --cask discord
brew install --cask whatsapp
brew install --cask skype
brew install --cask gotomeeting
brew install --cask microsoft-teams
brew install --cask runelite

# Desktop apps (Browsers)
brew install --cask google-chrome
brew install --cask firefox

# Desktop apps (Utils)
brew install --cask spotify
brew install --cask backup-loupe
brew install --cask 1password
brew install --cask transmission
brew install --cask geekbench
brew install --cask bartender
brew install --cask dropbox
brew install --cask adobe-creative-cloud
brew install --cask vlc
brew install --cask gpg-suite
brew install --cask virtualbox

# Apache Setup
brew install httpd
sudo apachectl stop
sudo launchctl unload -w /System/Library/LaunchDaemons/org.apache.httpd.plist
brew install dnsmasq httpd

# PHP
brew tap shivammathur/php
# brew install shivammathur/php/php@7.0
# brew install shivammathur/php/php@7.1
# brew install shivammathur/php/php@7.2
# brew install shivammathur/php/php@7.3
brew install shivammathur/php/php@7.4
brew install shivammathur/php/php@8.0
brew install libmemcached

# PHP Switcher tool
curl -L https://gist.githubusercontent.com/rhukster/f4c04f1bf59e0b74e335ee5d186a98e2/raw/adc8c149876bff14a33e3ac351588fdbe8172c07/sphp.sh > /usr/local/etc/sphp
chmod +x /usr/local/etc/sphp
/usr/local/etc/sphp1 7.4

# Memcached for PHP (will need to be installed for each version)
pecl install memcached

# Xdebug (will need to be installed for each version)
pecl install xdebug

# Composer
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php composer-setup.php
php -r "unlink('composer-setup.php');"
mv composer.phar /usr/local/bin/composer
composer self-update

# DNS
brew install dnsmasq

# MySQL (Percona)
brew install percona-server
brew services start percona-server

# Node (sigh...)
brew install nvm

# Follow the instructions given in the installation output before continuing...
mkdir ~/.nvm 
nvm ls-remote 
nvm install --lts
nvm install 8.9.3
nvm use --lts

# Ionic Framework CLI
npm install -g @ionic/cli

# Angular CLI
npm install -g @angular/cli

# ARM development
brew tap osx-cross/arm
brew install arm-gcc-bin
npm install -g xpm && xpm install --global @xpack-dev-tools/openocd@latest
# Add ~/Library/xPacks/@xpack-dev-tools/openocd/[VERSION]/.content/bin/ to your PATH
# brew install openocd

# Java development
brew install openjdk@8
brew install gradle
