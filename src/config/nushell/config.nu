# Define configs.

## Initialize module.
source ($nu.default-config-dir | path join "modules/init.nu")

## Load nushell configs.
use ($nu.default-config-dir | path join "modules/core/completions.nu")
use ($nu.default-config-dir | path join "modules/core/display.nu")
use ($nu.default-config-dir | path join "modules/core/editor.nu")
use ($nu.default-config-dir | path join "modules/core/history.nu")
use ($nu.default-config-dir | path join "modules/core/miscellaneous.nu")
use ($nu.default-config-dir | path join "modules/core/terminal.nu")

## Load modules for external binary integration.
### github:starship/starship
source ($nu.default-config-dir | path join "modules/starship/init.nu")

### github:microsoft/vscode
if (
  (which code | length) > 0
  and ($env | default null "TERM_PROGRAM" | get "TERM_PROGRAM") == "vscode"
) {
  use ($nu.default-config-dir | path join "modules/vscode")
}
