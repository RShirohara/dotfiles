#!/usr/bin/env bash

root=$(dirname $0)

patch "$DOTPATH/submodule/prezto/init.zsh" "$root/prezto.patch"
