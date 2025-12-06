# Original:
{{ output "/home/linuxbrew/.linuxbrew/bin/brew" "shellenv" | comment "# " }}

export-env {
  $env.HOMEBREW_PREFIX = "/home/linuxbrew/.linuxbrew"
  $env.HOMEBREW_CELLAR = "/home/linuxbrew/.linuxbrew/Cellar"
  $env.HOMEBREW_REPOSITORY = "/home/linuxbrew/.linuxbrew"
  $env.HOMEBREW_NO_ANALYTICS = "1"
  $env.PATH = (
    $env.PATH
    | prepend [
      "/home/linuxbrew/.linuxbrew/bin"
      "/home/linuxbrew/.linuxbrew/sbin"
    ]
  )
  $env.INFOPATH = (
    $env
    | default "" "INFOPATH"
    | get "INFOPATH
    | split row ":"
    | prepend "/home/linuxbrew/.linuxbrew/share/info"
    | str join ":"
  )
}
