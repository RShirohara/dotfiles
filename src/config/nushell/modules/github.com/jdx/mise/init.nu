# Environment integrations for github.com/jdx/mise.

## Initialize
let $script_path = $nu.data-dir
| path join "vendor/autoload/github.com---jdx---mise.nu"

if (
  (which mise | length) > 0
  and ($script_path | path exists) == false
) {
  mise activate nu
  | save --force $script_path
}
