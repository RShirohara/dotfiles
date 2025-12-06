#!/usr/bin/env bash

set -o "errexit" -o "nounset" -o "pipefail"

# System link-handler integration.
#
# Supported Platform:
# - macOS (`open`)
#
# Usage:
#   open https://github.com     - open GitHub by default browser.

open "${@}"
