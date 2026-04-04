{ config, ... }: {
  home.sessionVariables = {
    RUSTUP_HOME = "${config.xdg.dataHome}/rustup";
  };
}
