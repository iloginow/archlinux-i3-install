#!/bin/bash
set -e

# Install from AUR function
auri () {
        if pacman -Qi $1 &> /dev/null; then

                echo "################################################################"
                echo "################## "$1" is already installed"
                echo "################################################################"

        else

                #checking which helper is installed
                if pacman -Qi packer &> /dev/null; then

                        echo "Installing with packer"
                        packer -S --noconfirm --noedit $1

                elif pacman -Qi pacaur &> /dev/null; then
                        
                        echo "Installing with pacaur"
                        pacaur -S --noconfirm --noedit $1
                                
                elif pacman -Qi yaourt &> /dev/null; then

                        echo "Installing with yaourt"
                        yaourt -S --noconfirm $1
                                        
                fi

                # Just checking if installation was successful
                if pacman -Qi $1 &> /dev/null; then
                
                echo "################################################################"
                echo "#########  "$1" has been installed"
                echo "################################################################"

                else

                echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
                echo "!!!!!!!!!  "$1" has NOT been installed"
                echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"

                fi

        fi
}

# Fonts
sudo pacman -S --noconfirm --needed noto-fonts
curl -L https://github.com/iloginow/nerd-fonts/blob/InconsolataLGC/patched-fonts/InconsolataLGC/complete/Inconsolata%20LGC%20Nerd%20Font%20Complete.ttf -o ~/.local/share/fonts/Inconsolata\ LGC\ Nerd\ Font\ Complete.ttf
curl -L https://github.com/iloginow/nerd-fonts/blob/InconsolataLGC/patched-fonts/InconsolataLGC/complete/Inconsolata%20LGC%20Italic%20Nerd%20Font%20Complete.ttf -o ~/.local/share/fonts/Inconsolata\ LGC\ Italic\ Nerd\ Font\ Complete.ttf
curl -L https://github.com/iloginow/nerd-fonts/blob/InconsolataLGC/patched-fonts/InconsolataLGC/complete/Inconsolata%20LGC%20Bold%20Nerd%20Font%20Complete.ttf -o ~/.local/share/fonts/Inconsolata\ LGC\ Bold\ Nerd\ Font\ Complete.ttf
curl -L https://github.com/iloginow/nerd-fonts/blob/InconsolataLGC/patched-fonts/InconsolataLGC/complete/Inconsolata%20LGC%20Bold%20Italic%20Nerd%20Font%20Complete.ttf -o ~/.local/share/fonts/Inconsolata\ LGC\ Bold\ Italic\ Nerd\ Font\ Complete.ttf

# Git
sudo pacman -S --noconfirm --needed git

# ZSH
sudo pacman -S --noconfirm --needed zsh zsh-completions
chsh -s /usr/bin/zsh
sudo chsh -s /usr/bin/zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
git clone git://github.com/iloginow/zsh-paci ~/.oh-my-zsh/custom/plugins/zsh-paci

# Archives
sudo pacman -S --noconfirm --needed unzip unrar p7zip

# Ruby
sudo pacman -S --noconfirm --needed ruby

# Vim + Tmux IDE
sudo pacman -S --noconfirm --needed gvim tmux
gem install tmuxinator
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Browser
auri google-chrome

# Terminal
sudo pacman -S --noconfirm --needed termite
sudo pacman -Rs --noconfirm xterm

# Messengers
auri rambox

# Torrents
sudo pacman -S --noconfirm --needed transmission-gtk

# PDF DjVU
sudo pacman -S --noconfirm --needed zathura zathura-djvu zathura-pdf-mupdf

# Manage MIME types and default applications
sudo pacman -S --noconfirm --needed xdg-utils perl-file-mimeinfo

# Hide mouse cursor
sudo pacman -S --noconfirm --needed unclutter

# Transparency, transitons and animations for i3 windows
sudo pacman -S --noconfirm --needed compton

