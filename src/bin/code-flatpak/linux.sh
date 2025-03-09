#!/usr/bin/env bash
# A script to start VSCode after
# loading environment information defined on host.

set -o "errexit" -o "nounset"

# jdx/mise override.
if [[ -x $(command -v "mise") ]]; then
  eval "$(mise activate bash)"
fi

# get vscode info
BRANCH=$(
  flatpak info com.visualstudio.code \
  | grep "Branch: .*" \
  | sed --expression="s|\s*Branch: ||g"
)
ARCH=$(
  flatpak info com.visualstudio.code \
  | grep "Arch: .*" \
  | sed --expression="s|\s*Arch: ||g"
)

# start vscode.
flatpak run \
  --branch="${BRANCH}" \
  --arch="${ARCH}" \
  --command=code \
  --file-forwarding \
  com.visualstudio.code "${@}"
