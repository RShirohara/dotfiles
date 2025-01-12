# Module initialization scripts for nushell.

## Initialize autoload dir.
let $autoload_path = $nu.data-dir
| path join "vendor/autoload"
if ($autoload_path | path exists) == false {
  mkdir $autoload_path
}
