#!/usr/bin/env bash

set -o "errexit" -o "nounset" -o "pipefail"

# System link-handler integration.
#
# Supported Platform:
# - XDG (`xdg-open`)
#
# Usage:
#   open https://github.com     - open GitHub by default browser.

if [[ -x $(command -v xdg-open) ]]; then
  xdg-open "$@"
else
  echo "Can't detect platform."
  exit 1
fi
