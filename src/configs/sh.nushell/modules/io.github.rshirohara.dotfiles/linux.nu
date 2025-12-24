export-env {
  $env.PATH = (
    $env.PATH
    | prepend $"($env.HOME)/.local/bin"
  )
}
