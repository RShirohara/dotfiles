# Completer definition and completion configs for nushell.

## Completer
def create_carapace_completer []: nothing -> closure {
  return {|spans: list<string>|
    carapace $spans.0 nushell ...$spans
    | from json
    | if ($in | default [] | where value =~ "^-.*ERR$" | is-empty) {
      $in
    } else {
      null
    }
  }
}

def create_external_completer []: nothing -> closure {
  return {|spans: list<string>|
    let expanded_alias = scope aliases
    | where name == $spans.0
    | get --optional 0.expansion
    let spans = if $expanded_alias != null {
      $spans
      | skip 1
      | prepend ($expanded_alias | split row " " | take 1)
    } else {
      $spans
    }

    match $spans.0 {
      _ => (create_carapace_completer)
    }
    | do $in $spans
  }
}

export-env {
  ## Configs
  $env.config.completions.algorithm = "fuzzy"
  $env.config.completions.external.enable = true
  $env.config.completions.external.completer = (create_external_completer)

  ## Menus
  $env.config.menus ++= [
    {
      name: "completion_menu"
      only_buffer_difference: false
      marker: "| "
      type: {
        layout: "columnar"
        columns: 1
      }
      style: {
        text: "green"
        selected_text: "green_bold"
      }
    },
  ]
}
