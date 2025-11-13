#!/usr/bin/env bash

set -o "errexit" -o "nounset" -o "pipefail"

# System clipboard integration.
#
# Supported Platform:
# - X11 (`xclip`)
# - Wayland (`wl-copy`, `wl-paste`)
#
# Usage:
#   <command> | clip    - copy stdin to clipboard.
#   clip                - write clipboard's content to stdout.
#   clip | <command>    - paste contents and pipes to process.

# paste to stdout
if [[ -t 0 && $# -eq 0 ]]; then
  ## X11
  if [[ "${XDG_SESSION_TYPE:-}" == "x11" && -x $(command -v xclip) ]]; then
    xclip -out -selection clipboard

  ## Wayland
  elif [[ "${XDG_SESSION_TYPE:-}" == "wayland" && -x $(command -v wl-paste) ]]; then
    wl-paste

  else
    echo "Can't find platform."
    exit 1
  fi

# copy from stdin
else
  ## X11
  if [[ "${XDG_SESSION_TYPE:-}" == "x11" && -x $(command -v xclip) ]]; then
    xclip -in -selection clipboard < "${1:-/dev/stdin}"

  ## Wayland
  elif [[ "${XDG_SESSION_TYPE:-}" == "wayland" && -x $(command -v wl-copy) ]]; then
    wl-copy < "${1:-/dev/stdin}"

  else
    echo "Can't find platform."
    exit 1
  fi
fi
