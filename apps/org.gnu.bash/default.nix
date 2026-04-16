{ ... }: {
  programs.bash.enable = true;
  programs.bash.package = null;

  programs.bash.enableCompletion = false;

  programs.carapace.enableBashIntegration = false;
  programs.mise.enableBashIntegration = false;
  programs.starship.enableBashIntegration = false;
}
