# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="jreese"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

plugins=(git gpg-agent)

source $ZSH/oh-my-zsh.sh

unsetopt correct_all

# Customize to your needs...
export PATH=$PATH:`git --exec-path`:/home/eeight/bin

alias ls='ls --color=auto'
alias l=ls
alias grep='grep --colour=auto'

alias gd='git-diff'
alias gds='git-diff --stat'
alias gi='git-commit'
alias gfix='git-commit --amend -C HEAD'
alias gb='git-branch -av'
alias gbb='git-branch'
alias gsd='git-svn dcommit'
alias gsr='git-svn rebase'
alias gsf='git-svn fetch'
alias gs='git-status -s'
alias gco='git-checkout'
alias grb='git-rebase'
alias grbc='git-rebase --continue'
alias gst='git-stash'
alias gsl='git-stash list'
alias gsp='git-stash pop'
alias ga='git-add'
alias gcpick='git-cherry-pick'
alias gclean='git-clean'
alias gr='git-reset'
alias gwhat='git-whatchanged -M'
alias wat=gwhat
alias glog='git-log --graph --decorate'
alias glog1='git-log --graph --decorate --oneline'
alias gp='git-pkg'

alias br='(cd ~/m && tig)'

alias time='/usr/bin/time -v'

alias sd='svn diff "$@" | vless'
alias apt-get="sudo apt-get"
alias ag="apt-get"
alias ac="apt-cache"
alias dpkg="sudo dpkg"
alias d=dpkg

alias :q='exit'
alias :make='make'
alias e='vim'
alias :e='vim'
alias make="make -j24"
alias m='make'
alias ssh="ssh -Y"
alias map="xargs -n1"
alias build="debuild --no-tgz-check --no-lintian -j8 && debuild clean"
alias dbc="debuild clean"
alias vless="/usr/share/vim/vim72/macros/less.sh"

alias deb="make deb && make distclean"

alias dch='dch -D unstable --force-distribution --distributor yandex'
alias dupload='dupload --nomail'

alias fixme='fgrep FIXME -rn .'
alias todo='fgrep TODO -rn .'

alias tt='tmux attach || tmux new'

alias update-dotfiles='pushd ~/.dotfiles; git pull; popd'

export LC_ALL=en_US.utf8
export LC_LANG=en_US.utf8
export LC_COLLATE=C

export PYUPDATER_OPTIONS="--package-manager paludis"
export PATH="/home/eeight/bin:/usr/libexec/git-core/:/usr/lib/git-core:${PATH}"
export EDITOR="/usr/bin/vim"

export EMAIL="eeight@yandex-team.ru"
export DEBFULLNAME="Petr Prokhorenkov"

export SR="https://svn.yandex.ru/maps"
export ST="https://svn.yandex.ru/maps/trunk"
export SB="https://svn.yandex.ru/maps/branches/eeight"

export TMPDIR=/home/eeight/tmp/tmp
