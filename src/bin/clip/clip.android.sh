#!/usr/bin/env bash
# System clipboard integration
#
# Supported Platform:
# - Termux (`termux-clipboard-get`, `termux-clipboard-set`)
#
# Usage:
#   <command> | clip    - copy stdin to clipboard.
#   clip                - write clipboard's content to stdout.
#   clip | <command>    - paste contents and pipes to process.

# paste to stdout
if [[ -t 0 && -x $(command -v termux-clipboard-get) ]]; then
  termux-clipboard-get

# copy from stdin
elif [[ -x $(command -v termux-clipboard-set) ]] ; then
  termux-clipboard-set < "${1:-/proc/self/fd/0}"
fi
