{ config, pkgs, ... }: {
  home.packages = [
    pkgs.brewCasks.secretive
  ];
  programs.ssh.enable = true;

  home.sessionVariables = {
    SSH_AUTH_SOCK = "${config.home.homeDirectory}/Library/Containers/com.maxgoedjen.Secretive.SecretAgent/Data/socket.ssh";
  };
  programs.ssh.enableDefaultConfig = false;
  programs.ssh.settings = {
    "*" = {
      IdentityAgent = "${config.home.homeDirectory}/Library/Containers/com.maxgoedjen.Secretive.SecretAgent/Data/socket.ssh";
    };
  };
}
