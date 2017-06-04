
export ZSH=$HOME/.oh-my-zsh

ZSH_CUSTOM=$HOME/.oh-my-zsh-custom
ZSH_THEME="gentoo-luk"
DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(git vagrant pip ssh-agent debian golang)

source $ZSH/oh-my-zsh.sh

export EDITOR='vim'

zstyle ':completion:*' rehash true

export GOPATH=$HOME/go
export PATH=$PATH:$HOME/bin:$GOPATH/bin
