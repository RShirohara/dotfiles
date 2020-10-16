#!/usr/bin/env bash

source "$DOTPATH/etc/install"

msg_header "platform: $(platform)"

for i in "$DOTPATH"/etc/init/$(platform)/*.sh
do
    if [ -f "$i" ]; then
        msg_arrow $(basename "$i")
        bash "$i"
    else
        continue
    fi
done
