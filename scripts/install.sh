#!/usr/bin/env bash

REPO_URL="github.com/RShirohara/dotfiles"
REPO_SOURCE="~/Workspace/${REPO_URL}"

case "$(uname -s)" in
  Darwin*)  CONFIG_FILE="~/Library/CLI Preferences/chezmoi/chezmoi.toml";;
  Linux*)   CONFIG_FILE="~/.config/chezmoi/chezmoi.toml";;
  *)        echo "This os isn't supported."; exit 1;;
esac

bash -c "$(curl -fsLS https://get.chezmoi.io)" -- \
  -b "/tmp/chezmoi" \
  init \
  --apply \
  --config="${CONFIG_FILE}" \
  --source="${REPO_SOURCE}" \
  --purge-binary \
  "${REPO_URL}"
