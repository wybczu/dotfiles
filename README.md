# dotfiles

## Prerequisites

```bash
$ sudo apt install stow git python3-pip python3-apt python3-virtualenv
$ git clone git@github.com:wybczu/dotfiles.git ~/.dotfiles
```

## Ansible Desktop Setup

Warning, the Ansible playbook is super-debian-specific! It assumes that you
selected following tasks during the install:

- desktop,
- gnome-desktop,
- xfce-desktop,
- ssh-server,
- laptop - when running on a laptop.

To run the Ansible playbook execute:

```bash
$ python -m venv .ansible-venv
# source .ansible-venv/bin/activate
$ ansible-playbook -D -i "localhost," setup/desktop.yml
```

## Manual setup

### MS Fonts

```bash
$ sudo apt install ttf-mscorefonts-installer
```

### Vim

```bash
$ stow vim
$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
$ vim +PluginInstall +qall
```

### mbsync

```bash
$ mkdir -p ~/.config/systemd/user
$ stow mbsync
$ systemctl --user daemon-reload
$ systemctl --user enable mbsync.timer
$ systemctl --user start mbsync.timer
```
