{ ... }: {
  programs.mise.enable = true;
  # TODO: Build failing on 2026/03/30.
  programs.mise.package = null;

  programs.mise.globalConfig = {
    settings.experimental = true;
    settings.paranoid = true;
    settings.python.uv_venv_auto = true;
  };
}
