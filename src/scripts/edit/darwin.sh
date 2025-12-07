#!/usr/bin/env bash

set -o "errexit" -o "nounset" -o "pipefail"

hx \
  --config "${XDG_CONFIG_HOME}/helix/config.toml" \
  --log "${XDG_STATE_HOME_INTERNAL_LOG}/helix/helix.log" \
  ${@:-}
