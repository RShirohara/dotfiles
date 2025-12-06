export-env {
  if ($env | default null "TERM_PROGRAM" | get "TERM_PROGRAM") == "vscode" {
    $env.EDITOR = "code -w"
    $env.GIT_EDITOR = $env.EDITOR
  }
}
