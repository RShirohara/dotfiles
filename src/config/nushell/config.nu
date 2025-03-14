# Define configs.

## Load nushell configs.
use ($nu.default-config-dir | path join "modules/core/commands.nu") *
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

### github.com/x-motemen/ghq
use (
  $nu.default-config-dir
  | path join "modules/github.com/x-motemen/ghq"
)

### github.com/microsoft/vscode
if (($env | default null "TERM_PROGRAM" | get "TERM_PROGRAM") == "vscode") {
  use (
    $nu.default-config-dir
    | path join "modules/github.com/microsoft/vscode"
  )
}

### github.com/jdx/mise
if ((which mise | length) > 0) {
  source (
    $nu.default-config-dir
    | path join "modules/github.com/jdx/mise/init.nu"
  )
}

### gnupg.org
if ((which gpg | length) > 0) {
  use (
    $nu.default-config-dir
    | path join "modules/gnupg.org/gnupg"
  )
}
