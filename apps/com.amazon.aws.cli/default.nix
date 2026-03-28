{ ... }: {
  programs.awscli.enable = true;

  programs.awscli.settings = {
    "default" = {
      cli_pager = "";
    };
  };
}
