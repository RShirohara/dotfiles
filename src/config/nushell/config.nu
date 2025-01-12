# Define configs.

## Initialize module.
source ($nu.default-config-dir | path join "modules/init.nu")

## Configs for nushell.
use ($nu.default-config-dir | path join "modules/core/completions.nu")
use ($nu.default-config-dir | path join "modules/core/display.nu")
use ($nu.default-config-dir | path join "modules/core/editor.nu")
use ($nu.default-config-dir | path join "modules/core/history.nu")
use ($nu.default-config-dir | path join "modules/core/miscellaneous.nu")
use ($nu.default-config-dir | path join "modules/core/terminal.nu")

## External Modules
### github:starship/starship
source ($nu.default-config-dir | path join "modules/starship/init.nu")
