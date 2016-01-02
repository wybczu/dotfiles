
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="gentoo"
DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(git vagrant pip ssh-agent debian)

source $ZSH/oh-my-zsh.sh

export PATH=$PATH:$HOME/bin
export EDITOR='vim'

zstyle ':completion:*' rehash true

