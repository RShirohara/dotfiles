{ config, ... }: {
  home.sessionVariables = {
    PHP_HISTFILE = "${config.xdg.stateHome}/php/history";
  };
}
