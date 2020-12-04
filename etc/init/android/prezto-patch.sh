#!/usr/bin/env bash

root=$(dirname $0)

patch "$DOTPATH/submodules/prezto/init.zsh" "$root/prezto.patch"
