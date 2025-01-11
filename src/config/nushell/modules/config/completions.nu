# Completions configs.

## Completer
let carapace_completer = {|spans: list<string>|
  carapace $spans.0 nushell ...$spans
  | from json
  | if ($in | default [] | where value =~ "^-.*ERR$" | is-empty) {
    $in
  } else {
    null
  }
}

let external_completer = {|spans: list<string>|
  let expanded_alias = scope aliases
  | where name == $spans.0
  | get -i 0.expansion
  let spans = if $expanded_alias != null {
    $spans
    | skip 1
    | prepend ($expanded_alias | split row " " | take 1 )
  } else {
    $spans
  }

  match $spans.0 {
    _ => $carapace_completer
  }
  | do $in $spans
}

## Config
$env.config.completions.algorithm = "fuzzy"
$env.config.completions.external.enable = true
$env.config.completions.external.completer = $external_completer
