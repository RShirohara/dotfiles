{ ... }: {
  programs.zsh.enable = true;

  programs.zsh.enableCompletion = false;

  programs.carapace.enableZshIntegration = false;
  programs.mise.enableZshIntegration = false;
  programs.starship.enableZshIntegration = false;
}
