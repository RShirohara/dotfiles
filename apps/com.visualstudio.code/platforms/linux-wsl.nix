{ ... }:
{
  programs.nushell.extraConfig = ''
    if ($env | default null "TERM_PROGRAM" | get "TERM_PROGRAM") == "vscode" {
    }
      # Change default editor to vscode.
      $env.EDITOR = "code -w"
      $env.GIT_EDITOR = $env.EDITOR
  '';
}
