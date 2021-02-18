#!/usr/bin/env bash

root=$(dirname $0)

ln -sfnv $root/bin/* "$DOTPATH/bin/"
