#!/bin/bash
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
wget https://raw.githubusercontent.com/trapd00r/utils/master/zsh_path -O /usr/local/bin/zsh_path
chmod +x /usr/local/bin/zsh_path
