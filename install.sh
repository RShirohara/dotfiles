#!/usr/bin/env bash
# author: @RShirohara
# dotfiles install script

DOTPATH="~/.dotfiles"
GITHUB_URL="https://github.com/RShirohara/.dotfiles"
TARBALL_URL=$GITHUB_URL"/archive/master.tar.gz"

# can use git?
if [[ -e $(which git) ]]; then
    git clone --recursive $GITHUB_URL $DOTPATH
elif [[ -e "$(which curl)" || -e "$(which wget)" ]]; then
    if [[ -e $(which curl) ]]; then
        curl -L "$TARBALL_URL"
    elif [[ -r $(which wget) ]]; then
        wget -O - "$TARBALL_URL"
    fi | tar -zxv
    mv -f .dotfiles-master "$DOTPATH"

else
    die "curl or wget requied."
fi
# TODO:処理部作成
