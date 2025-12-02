#!/usr/bin/env bash

set -o "errexit" -o "nounset" -o "pipefail"

# System clipboard integration.
#
# Supported Platform:
# - macOS (`pbcopy`, `pbpaste`)
#
# Usage:
#   <command> | clip    - copy stdin to clipboard.
#   clip                - write clipboard's content to stdout.
#   clip | <command>    - paste contents and pipes to process.

# paste to stdout
if [[ -t 0 && $# -eq 0 ]]; then
  pbpaste

# copy from stdin
else
  pbcopy < "${1:-/dev/stdin}"
fi
