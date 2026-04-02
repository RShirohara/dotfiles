#!/usr/bin/env sh

set -o "errexit" -o "nounset" -o "pipefail"

REPOSITORY_PATH="github.com/RShirohara/dotfiles"
REPOSITORY_INSTALL_PATH_PREFIX="${HOME}/Workspace"

# Install nix if not installed.
if [ ! -d "/nix" ]; then
  curl -fsSL https://install.determinate.systems/nix | sh -s -- install
  . /nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh
fi

# Clone repository.
nix run nixpkgs#git -- clone --filter="blob:none" \
  "https://${REPOSITORY_PATH}" \
  "${REPOSITORY_INSTALL_PATH_PREFIX}/${REPOSITORY_PATH}"

# Apply specified profiles to home environment.
PROFILE="${1:-$( \
  find "${REPOSITORY_INSTALL_PATH_PREFIX}/${REPOSITORY_PATH}/profiles" \
    -depth 1 \
    -type f \
    -name "*.nix" \
    -print0 \
  | xargs -0 -I@ \
    basename @ \
  | sed \
    -e "s/.nix//g" \
    -e "s/_/@/g" \
  | nix run nixpkgs#gum -- choose
)}"
nix run home-manager -- switch \
  --flake "${REPOSITORY_INSTALL_PATH_PREFIX}/${REPOSITORY_PATH}#${PROFILE}"
