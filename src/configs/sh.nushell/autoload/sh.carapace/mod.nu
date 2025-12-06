let script_path: string = (
  $nu.data-dir
  | path join "vendor/autoload/sh.carapace.nu"
)

if (
  (which "carapace" | length) > 0
  and ($script_path | path exists) == false
) {
  carapace _carapace nushell
  | save --force $script_path
}
