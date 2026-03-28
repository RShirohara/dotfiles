{ config, ... }: {
  programs.npm.enable = true;
  programs.npm.package = null;

  programs.npm.settings = {
    cache = "${config.xdg.cacheHome}/npm";
    init-module = "${config.xdg.configHome}/npm/config/npm-init.js";
    logs-dir = "${config.xdg.stateHome}/npm/logs";
    prefix = "${config.xdg.dataHome}/npm";
  };
}
