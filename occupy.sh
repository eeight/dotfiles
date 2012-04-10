#!/bin/sh
set -eu

host=$1

echo Installing oh-my-zsh
ssh "$host" "curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh"

echo Cloning dotfiles
ssh "$host" "git clone github.com/eeight/dotfiles.git:.dotfiles .dotfiles"

echo Rolling out dotfiles
ssh "$host" '
    cd /home/eeight/.dotfiles
    for f in .*; do
        ln -sf $f /home/eeight/`basename "$f"`
    done'

