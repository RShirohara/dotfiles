export-env {
  $env.EDITOR = "flatpak run com.visualstudio.code -w"
  $env.GIT_EDITOR = $env.EDITOR
}
