export-env {
  $env.PATH = (
    $env.PATH
    | prepend $"($env.XDG_DATA_HOME)/io.github.rshirohara.dotfiles/bin"
  )
}
