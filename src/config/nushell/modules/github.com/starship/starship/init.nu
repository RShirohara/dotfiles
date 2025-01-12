# Prompt integrations for github.com/starship/starship.

## Initialize
let $script_path = $nu.data-dir
| path join "vendor/autoload/github.com---starship---starship.nu"

if (
  (which starship | length) > 0
  and ($script_path | path exists) == false
) {
  starship init nu
  | save --force $script_path
}
