
zstyle ':completion:*' rehash true

export ZSH=$HOME/.oh-my-zsh

ZSH_CUSTOM=$HOME/.oh-my-zsh-custom
ZSH_THEME="gentoo-luk"
DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(git vagrant pip ssh-agent gpg-agent golang colored-man-pages python)

export EDITOR='vim'
export GOPATH=$HOME/go
export PATH=$PATH:$HOME/bin:$GOPATH/bin:$HOME/.local/share/arcanist/bin

if [ -f ${HOME}/.zshrc-local ]; then
	source ${HOME}/.zshrc-local
fi

source $ZSH/oh-my-zsh.sh

if (( $+commands[kubectl] )); then
    __KUBECTL_COMPLETION_FILE="${ZSH_CACHE_DIR}/kubectl_completion"

    if [[ ! -f $__KUBECTL_COMPLETION_FILE ]]; then
        kubectl completion zsh >! $__KUBECTL_COMPLETION_FILE
    fi

    [[ -f $__KUBECTL_COMPLETION_FILE ]] && source $__KUBECTL_COMPLETION_FILE

    unset __KUBECTL_COMPLETION_FILE
fi

