#!/usr/bin/env bash
# System clipboard integration
#
# Supported Platform:
# - WSL (`clip.exe`, `Get-Clipboard` (powershell.exe))
#
# Usage:
#   <command> | clip    - copy stdin to clipboard.
#   clip                - write clipboard's content to stdout.
#   clip | <command>    - paste contents and pipes to process.

# paste to stdout
if [[ -t 0 ]]; then
  powershell.exe -noprofile -command Get-Clipboard

# copy from stdin
else
  clip.exe < "${1:-/dev/stdin}"
fi
