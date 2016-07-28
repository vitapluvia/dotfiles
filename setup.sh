#!/bin/bash

cp \.* ~/
mkdir -p ~/.vim/swap ~/.vim/backup ~/.vim/undo

# Remove zeitgeist
sudo apt-get -y --purge remove libzeitgeist* *-zeitgeist zeitgeist-*
ps uax | grep -i zeit | grep -vi grep | awk '{print $2}' | xargs kill -9
rm -rf ~/.local/share/zeitgeist

# Chrome setup
sed -i 's/@include common-session/session optional pam_xauth.so\n\0/' /etc/pam.d/su
useradd -m chrome
usermod -s /bin/false chrome

# Standard tools
apt-get install -y feh exiftool xmonad strace ltrace

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# r2
git clone https://github.com/radare/radare2 ~/.r2-install
~/.r2-install/sys/install.sh
rm -rf ~/.r2-install

# fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# vim-plugged
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# disable services
service bluetooth stop
service speech-dispatcher stop
service apache-htcacheclean stop
service rpcbind stop

# r2 further setup
# touch ~/.radare2rc
# [r2]: ec* > ~/.radare2rc
