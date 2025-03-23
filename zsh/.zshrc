export ZSH=$HOME/.oh-my-zsh

ZSH_CUSTOM=$HOME/.oh-my-zsh-custom
ZSH_THEME="gentoo-luk"
DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(
	colored-man-pages
	direnv
	git
	gcloud
	golang
	gpg-agent
	kube-ps1
	pip
	python
	ssh-agent
	vagrant
)

export EDITOR='vim'
export GOPATH=$HOME/go
export PATH=$PATH:$HOME/bin:$GOPATH/bin:$HOME/.local/share/arcanist/bin

zstyle ':completion:*' rehash true

if [ -f ${HOME}/.zshrc-local ]; then
	source ${HOME}/.zshrc-local
fi

source $ZSH/oh-my-zsh.sh

if (( $+commands[kubectl] )); then
	# If the completion file doesn't exist yet, we need to autoload it and
	# bind it to `kubectl`. Otherwise, compinit will have already done that.
	if [[ ! -f "$ZSH_CACHE_DIR/completions/_kubectl" ]]; then
		typeset -g -A _comps
		autoload -Uz _kubectl
		_comps[kubectl]=_kubectl
	fi

	kubectl completion zsh 2> /dev/null >| "$ZSH_CACHE_DIR/completions/_kubectl" &|
fi
