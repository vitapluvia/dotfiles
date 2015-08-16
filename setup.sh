#!/bin/bash

# Setup Oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Setup fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# Setup ZSH Deps
wget https://raw.githubusercontent.com/trapd00r/utils/master/zsh_path -O /usr/local/bin/zsh_path
chmod +x /usr/local/bin/zsh_path

# Setup Vim-Plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Change current shell to ZSH
chsh -s /bin/zsh


