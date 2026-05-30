{ lib, pkgs, ... }:
let
  fnox = pkgs.rustPlatform.buildRustPackage rec {
    pname = "fnox";
    version = "1.25.1";
    src = pkgs.fetchFromGitHub {
      owner = "jdx";
      repo = "fnox";
      rev = "v${version}";
      sha256 = "sha256-4trfagKs8AO6agOazCdPH4jaTIPuMkF1mdxXLl5Cg3k=";
    };
    cargoHash = "sha256-GWyQrAnW0gFz+OBvYuHZ+btdUAIbQc77HdwiWL++DaE=";
    meta = {
      mainProgram = "fnox";
    };
  };
in
{
  home.packages = [
    fnox
  ];

  programs.nushell.extraConfig = ''
    source ${
      pkgs.runCommand "fnox-nushell-config.nu" { } ''
        ${lib.getExe fnox} activate nu > $out
      ''
    }
  '';
}
