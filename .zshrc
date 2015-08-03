# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

alias less="/usr/share/vim/vim73/macros/less.sh"
alias python='/usr/local/Cellar/python/2.7.4/bin/python2.7'
#!/usr/local/Cellar/python/2.7.4/bin/python2.7

PATHDIRS=(
/usr/local/share/python/
/usr/local/bin
/usr/bin
/bin
/usr/sbin
/sbin
/opt/local/bin
/usr/local/sbin
)

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"
ZSH_THEME="dallas"
ZSH_THEME="cloud"
ZSH_THEME="awesomepanda"
ZSH_THEME="geoffgarside"
ZSH_THEME="mikeh"
ZSH_THEME="mrtazz"
ZSH_THEME="zhann"
ZSH_THEME="af-magic"
ZSH_THEME="trapd00r"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git nvm)

source $ZSH/oh-my-zsh.sh

# General Aliases #

#alias tree="/usr/local/bin/tree"
alias dot="/usr/local/bin/dot"
alias la="ls -lrthaS"
alias c="clear"
alias cl="clear"
alias cle="clear"
alias clea="clear"
alias cla="clear; la"
alias cls="clear; ls"
alias cll="clear; ll"
alias ucla="u;clear; la"
alias ucls="u;clear; ls"
alias ucll="u;clear; ll"
alias ucl="u;clear"
alias ul="u;clear;ls"
alias uls="u;clear;ls"
alias ula="u;clear;la"
alias ull="u;clear;ll"
alias u="cd ../"
alias uu="cd ../../"
alias uuu="cd ../../../"
alias uuuu="cd ../../../../"
alias px="ps axjf"
alias g="grep"
alias gi="grep -i"
alias ll="ls -ltrh"
alias ltr="ls -ltrh"
alias linenumber="awk '\''NR==\!:1'\'' \!:2"
alias line="awk '\''NR==\!:1'\'' \!:2"
alias li="awk '\''NR==\!:1'\'' \!:2"
#alias l="awk '\''NR==\!:1'\'' \!:2"
alias v="vim"
alias vim="vim"
alias vvim="gvim -v"
alias gvim="mvim"
alias gvimv="gvim -v"
alias lsof="/usr/sbin/lsof"
alias sshfs="/usr/local/bin/sshfs"
alias p="python"
alias py="python"
alias cli="python /Library/Python/2.7/site-packages/bpython/cli.py"
alias coverage="p -c\"from coverage import main; main()\""
alias nosetests="p -c \"from nose import main; main()\""
alias nosetest="nosetests"
alias nt="nosetests"
alias t="tree"

# Enable Ctrl-x-e to edit command line
autoload -U edit-command-line
# Emacs style
zle -N edit-command-line
bindkey '^xe' edit-command-line
bindkey '^x^e' edit-command-line
# Vi style:
# zle -N edit-command-line
# bindkey -M vicmd v edit-command-line

rnis () {
  grep -rnis $* *
}
rnisc () {
  grep -rnis $* * | highlight -O ansi -S python | less -p $*
}
rnics () {
  grep -rnis $* * | highlight -O ansi -S python | less -p $*
}
sketch () {
  processing-java --sketch=`pwd`/$* --run --output=/tmp/out --force
}


# Git Commands
alias g4="git"
alias g4p="git status"
alias gs="git status"
alias ga="git add"
alias gd="git diff"
alias pom="git push origin master"

# Node
alias n="node"

# Reverse Search History List
function pick_select_history() {
  BUFFER=$(fc -l -n 1 | tail -r | pick $LBUFFER)
  CURSOR=$#BUFFER         # move cursor
  zle -R -c               # refresh
}

zle -N pick_select_history
bindkey '^R' pick_select_history
