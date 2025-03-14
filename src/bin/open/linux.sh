#!/usr/bin/env bash
# System link-handler integration
#
# Supported Platform:
# - XDG (`xdg-open`)
#
# Usage:
#   open https://github.com     - open GitHub by default browser.

if [[ -x $(command -v xdg-open) ]]; then
  xdg-open "$@"
fi
