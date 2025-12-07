let script_path: string = (
  $nu.data-dir
  | path join "vendor/autoload/rs.starship.nu"
)

if (
  (which "starship" | length) > 0
  and ($script_path | path exists) == false
) {
  starship init "nu"
  | save --force $script_path
}
