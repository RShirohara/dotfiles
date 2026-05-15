{ ... }: {
  programs.topgrade.enable = true;

  programs.topgrade.settings = {
    misc = {
      disable = [
        "helix"
        "home_manager"
      ];
    };
  };
}
