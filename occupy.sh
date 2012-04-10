#!/bin/sh
set -eu

host=$1

echo Installing oh-my-zsh
ssh "$host" "curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh"

echo Cloning dotfiles
ssh "$host" "test -d .dotfiles || git clone git://github.com/eeight/dotfiles.git .dotfiles"

echo Rolling out dotfiles
ssh "$host" '
    for f in /home/eeight/.dotfiles/.*; do
        [ "${f%.}" = "$f" ] || continue
        link=/home/eeight/`basename "$f"`
        rm -f "$link"
        ln -sf $f "$link"
    done'

