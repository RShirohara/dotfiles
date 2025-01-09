#!/usr/bin/env bash
# System link-handler integration
#
# Supported Platform:
# - Termux (`termux-open`)
#
# Usage:
#   open https://github.com     - open GitHub by default browser.

if [[ -x $(command -v termux-open) ]]; then
  termux-open "$@"
fi
