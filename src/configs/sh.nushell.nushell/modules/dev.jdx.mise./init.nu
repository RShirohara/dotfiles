let script_path: string = (
  $nu.data-dir
  | path join "vendor/autoload/dev.jdx.mise.nu"
)

if (
  (which "mise" | length) > 0
  and ($script_path | path exists) == false
) {
  mise activate "nu"
  | save --force $script_path
}
