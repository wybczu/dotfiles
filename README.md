# dotfiles

## Prerequisites

```bash
$ sudo apt install stow git
$ git clone git@github.com:wybczu/dotfiles.git ~/.dotfiles
```

## vim

```bash
$ stow vim
$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
$ vim +PluginInstall +qall
```

## mbsync

```bash
$ mkdir -p ~/.config/systemd/user
$ stow mbsync
$ systemctl --user daemon-reload
$ systemctl --user enable mbsync.timer
$ systemctl --user start mbsync.timer
```
