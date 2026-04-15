{ ...}: {
  home.sessionVariables = {
    DOCKER_CONFIG = "/run/user/\${UID}/docker";
  };
}
