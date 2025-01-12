# Prompt integrations for github:starship/starship.

## Initialize
let $script_path = $nu.data-dir
| path join "vendor/autoload/starship---starship.nu"

if (
  (which starship | length) > 0
  and ($script_path | path exists) == false
) {
  starship init nu
  | save -f $script_path
}
