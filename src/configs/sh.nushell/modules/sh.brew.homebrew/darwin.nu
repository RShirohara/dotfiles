# Original source:
{{ output "/opt/homebrew/bin/brew" "shellenv" | comment "# " }}

export-env {
  $env.HOMEBREW_PREFIX = "/opt/homebrew"
  $env.HOMEBREW_CELLAR = "/opt/homebrew/Cellar"
  $env.HOMEBREW_REPOSITORY = "/opt/homebrew"
  $env.HOMEBREW_NO_ANALYTICS = "1"
  $env.PATH = (
    /usr/bin/env PATH_HELPER_ROOT="/opt/homebrew" /usr/libexec/path_helper -c
    | lines
    | first 1
    | parse 'setenv {name} "{value}";'
    | transpose --header-row
    | into record
    | get "PATH"
    | split row ":"
  )
  $env.INFOPATH = (
    $env
    | default "" "INFOPATH"
    | get "INFOPATH"
    | split row ":"
    | prepend "/opt/homebrew/share/info"
    | str join ":"
  )
}
