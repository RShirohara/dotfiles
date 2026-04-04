{ config, ... }: {
  programs.gpg.enable = true;
  services.gpg-agent.enable = true;

  programs.gpg.homedir = "${config.xdg.dataHome}/gnupg";
}
