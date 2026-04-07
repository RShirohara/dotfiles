{ config, pkgs, ... }: {
  home.packages = [
    pkgs.dash
  ];

  home.file = {
    ".shrc" = {
      enable = true;
      text = ''
        . ~/.nix-profile/etc/profile.d/hm-session-vars.sh

        export PATH="${config.home.homeDirectory}/.nix-profile/bin:/nix/var/nix/profiles/default/bin:$PATH"
      '';
    };
  };
}
