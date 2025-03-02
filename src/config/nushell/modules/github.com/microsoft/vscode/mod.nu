# Shell integrations for github.com/microsoft/vscode.

export-env {
  ## Environments
  ### Set default editor to `code` on vscode integration shell.
  $env.EDITOR = $"(do { if (
    (which flatpak | length) > 0
    and (flatpak info com.visualstudio.code | complete).exit_code == 0
  ) {
    'flatpak run com.visualstudio.code'
  } else {
    'code'
  }
  }) -w"
  $env.GIT_EDITOR = $env.EDITOR
}
