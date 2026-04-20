{ inputs, ... }: {
  flake.homeConfigurations."tsegawa@pc-h0019054" = inputs.home-manager.lib.homeManagerConfiguration {
    pkgs = import inputs.nixpkgs { system = "x86_64-linux"; };
    modules = [
      {
        home.homeDirectory = "/home/tsegawa";
        home.preferXdgDirectories = true;
        home.stateVersion = "25.11";
        home.uid = 1000;
        home.username = "tsegawa";
        xdg.enable = true;
      }
      ../apps/com.amazon.aws.cli
      ../apps/com.amazon.aws.cli/profiles/dorayaki-prd-ope.nix
      ../apps/com.docker.engine/platforms/linux-wsl.nix
      ../apps/com.git-scm.git
      ../apps/com.git-scm.git/platforms/linux-wsl.nix
      ../apps/com.git-scm.git/profiles/tatsuya.segawa_tss21.co.jp.nix
      ../apps/com.helix-editor.helix
      ../apps/com.npmjs.cli
      ../apps/dev.go
      ../apps/dev.jdx.mise
      ../apps/io.github.byteness.aws-vault
      ../apps/io.github.byteness.aws-vault/platforms/linux-wsl.nix
      ../apps/io.pypa.virtualenv
      ../apps/net.php
      ../apps/org.gnu.bash
      ../apps/org.gnupg
      ../apps/org.gnupg/platforms/linux-wsl.nix
      ../apps/org.nodejs
      ../apps/org.python
      ../apps/org.rust-lang.cargo
      ../apps/org.rust-lang.rustup
      ../apps/rs.starship
      ../apps/sh.nushell
      ../apps/sh.nushell/platforms/linux-wsl.nix
    ];
  };
}
