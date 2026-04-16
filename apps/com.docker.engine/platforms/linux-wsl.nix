{ config, ... }: {
  home.sessionVariables = {
    DOCKER_CONFIG = "/run/user/${builtins.toString config.home.uid}/docker";
  };
}
