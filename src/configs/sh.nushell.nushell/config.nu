use ($nu.default-config-dir | path join "modules/internal.nushell.core./commands.nu") *
use ($nu.default-config-dir | path join "modules/internal.nushell.core./completions.nu")
use ($nu.default-config-dir | path join "modules/internal.nushell.core./display.nu")
use ($nu.default-config-dir | path join "modules/internal.nushell.core./editor.nu")
use ($nu.default-config-dir | path join "modules/internal.nushell.core./history.nu")
use ($nu.default-config-dir | path join "modules/internal.nushell.core./miscellaneous.nu")
use ($nu.default-config-dir | path join "modules/internal.nushell.core./terminal.nu")

if ($nu.data-dir | path join "vendor/autoload" | path exists) == false {
  mkdir ($nu.data-dir | path join "vendor/autoload")
}

if (
  ($env | default null "TERM_PROGRAM" | get "TERM_PROGRAM") == "vscode"
) {
  use (
    $nu.default-config-dir
    | path join "modules/com.visualstudio.code./"
  )
}
source (
  $nu.default-config-dir
  | path join "modules/dev.jdx.mise./init.nu"
)
use (
  $nu.default-config-dir
  | path join "modules/io.github.x-motemen.ghq./"
)
if ((which "gpg" | length) > 0) {
  use (
    $nu.default-config-dir
    | path join "modules/org.gnupg.gnupg./"
  )
}
source (
  $nu.default-config-dir
  | path join "modules/rs.starship.starship./init.nu"
)
