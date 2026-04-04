{ config, ... }: {
  programs.go.enable = true;
  programs.go.package = null;

  home.sessionVariables = {
    GOPATH = "${config.xdg.dataHome}/go";
    GOMODCACHE = "${config.xdg.cacheHome}/go/mod";
  };
}
