{ config, ... }: {
  programs.cargo.enable = true;
  programs.cargo.package = null;

  programs.cargo.cargoHome = "${config.xdg.dataHome}/cargo";
}
