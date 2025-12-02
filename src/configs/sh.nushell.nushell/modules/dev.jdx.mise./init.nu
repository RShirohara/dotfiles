let script_path: string = (
  $nu.data-dir
  | path join "vendor/autoload/dev.jdx.mise.nu"
)

if (
  (which "mise" | length) > 0
  and ($script_path | path exists) == false
) {
  ^env -i (which "mise" | first | get "path") activate "nu"
  | save --force $script_path
}
