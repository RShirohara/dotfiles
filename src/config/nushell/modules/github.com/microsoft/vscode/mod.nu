# Shell integrations for github.com/microsoft/vscode.

## Environments
export-env {
  ## Set default editor to `code` on vscode integration shell.
  $env.EDITOR = "code -w"
  $env.GIT_EDITOR = "code -w"
}
