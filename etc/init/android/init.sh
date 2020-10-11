#!/usr/bin/env bash

root=$(dirname $0)

ln -sfnv "$root/config/nano" "$DOTPATH/.config/nano"
ln -sfnv "$root/.zprezto/init.zsh" "$DOTPATH/submodules/.zprezto/init.zsh"
ln -sfnv "$root/.p10k.zsh" "$DOTPATH/.p10k.zsh"
