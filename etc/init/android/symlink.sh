#!/usr/bin/env bash

root=$(dirname $0)

ln -sfnv "$root/.config/nano/nanorc" "$DOTPATH/.config/nano/nanorc"
ln -sfnv "$root/.zprezto/init.zsh" "$DOTPATH/submodules/prezto/init.zsh"
ln -sfnv "$root/.p10k.zsh" "$DOTPATH/.p10k.zsh"
