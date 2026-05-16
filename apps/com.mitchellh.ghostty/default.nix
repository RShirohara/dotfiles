{ config, pkgs, ... }: {
  home.packages = [
    pkgs.hackgen-nf-font
  ];
  programs.ghostty.enable = true;
  programs.ghostty.package = pkgs.brewCasks.ghostty;

  programs.ghostty.settings = {
    auto-update = "off";
    command = "zsh --interactive -c 'nu'";
    font-family = "Hackgen Console NF";
    font-feature = "-calt, -liga, -dlig";
    font-size = 14;
    theme = "Vercel";
  };
}
