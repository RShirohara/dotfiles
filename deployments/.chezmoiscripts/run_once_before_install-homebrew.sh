#!/usr/bin/env bash

set -o "errexit" -o "nounset" -o "pipefail"

if [[ $(command -v "brew") ]]; then
  exit 0
fi

/usr/bin/env bash \
  -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
