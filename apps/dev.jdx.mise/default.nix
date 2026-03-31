{ ... }: {
  programs.mise.enable = true;

  programs.mise.globalConfig = {
    settings.experimental = true;
    settings.paranoid = true;
    settings.python.uv_venv_auto = true;
  };
}
