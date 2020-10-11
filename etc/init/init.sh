#!/usr/bin/env bash

source "$DOTPATH/etc/install"

for i in "$DOTPATH/etc/init/$(platform)/init.sh"
do
    if [ -f "$i" ]; then
        msg_arrow $(basename "$i")
        bash "$i"
    else
        continue
    fi
done
