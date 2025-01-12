# Define configs.

## Load nushell configs.
use ($nu.default-config-dir | path join "modules/core/completions.nu")
use ($nu.default-config-dir | path join "modules/core/display.nu")
use ($nu.default-config-dir | path join "modules/core/editor.nu")
use ($nu.default-config-dir | path join "modules/core/history.nu")
use ($nu.default-config-dir | path join "modules/core/miscellaneous.nu")
use ($nu.default-config-dir | path join "modules/core/terminal.nu")

## Load modules for external binary integration.
### Initialize autoload dir.
if ($nu.data-dir | path join "vendor/autoload" | path exists) == false {
  mkdir ($nu.data-dir | path join "vendor/autoload")
}

### github.com/starship/starship
source (
  $nu.default-config-dir
  | path join "modules/github.com/starship/starship/init.nu"
)

### github.com/microsoft/vscode
if (
  (which code | length) > 0
  and ($env | default null "TERM_PROGRAM" | get "TERM_PROGRAM") == "vscode"
) {
  use (
    $nu.default-config-dir
    | path join "modules/github.com/microsoft/vscode/mod.nu"
  )
}
