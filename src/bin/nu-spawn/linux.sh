#!/usr/bin/env bash
# A script to switch the way Nushell calls according
# to the environment in which VS Code is installed.

set -o "errexit" -o "nounset"

if [[ -x $(command -v "host-spawn") ]]; then
  host-spawn --env="TERM,COLORTERM,TERM_PROGRAM" \
    bash -i -c nu "${@}"
else
  nu "${@}"
fi
