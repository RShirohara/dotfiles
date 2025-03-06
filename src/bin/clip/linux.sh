#!/usr/bin/env bash
# System clipboard integration
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
  fi

# copy from stdin
else
  ## X11
  if [[ "${XDG_SESSION_TYPE:-}" == "x11" && -x $(command -v xclip) ]]; then
    xclip -in -selection clipboard < "${1:-/dev/stdin}"

  ## Wayland
  elif [[ "${XDG_SESSION_TYPE:-}" == "wayland" && -x $(command -v wl-copy) ]]; then
    wl-copy < "${1:-/dev/stdin}"
  fi
fi
