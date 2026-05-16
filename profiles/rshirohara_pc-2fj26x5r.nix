{ inputs, ... }: {
  flake.homeConfigurations."rshirohara@pc-2fj26x5r" = inputs.home-manager.lib.homeManagerConfiguration {
    pkgs = import inputs.nixpkgs { system = "aarch64-darwin"; };
    modules = [
      {
        nixpkgs.config = {
          allowUnfree = true;
        };
        nixpkgs.overlays = [
          inputs.brew-nix.overlays.default
        ];
      }
      {
        home.homeDirectory = "/Users/rshirohara";
        home.preferXdgDirectories = true;
        home.stateVersion = "26.05";
        home.username = "rshirohara";
        xdg.enable = true;
      }
      ../apps/com.amazon.aws.cli
      ../apps/com.amazon.aws.cli/profiles/third-branches-prd.nix
      ../apps/com.git-scm.git
      ../apps/com.git-scm.git/platforms/darwin.nix
      ../apps/com.git-scm.git/profiles/rshirohara_proton.me.nix
      ../apps/com.helix-editor.helix
      ../apps/com.mitchellh.ghostty
      ../apps/com.npmjs.cli
      ../apps/com.visualstudio.code
      ../apps/dev.go
      ../apps/dev.jdx.mise
      ../apps/dev.zed
      ../apps/io.github.byteness.aws-vault
      ../apps/io.github.byteness.aws-vault/platforms/darwin.nix
      ../apps/io.github.nix-community.home-manager
      ../apps/io.github.topgrade-rs.topgrade
      ../apps/io.pypa.virtualenv
      ../apps/net.php
      ../apps/org.gnupg
      ../apps/org.gnupg/platforms/darwin.nix
      ../apps/org.nodejs
      ../apps/org.python
      ../apps/org.rust-lang.cargo
      ../apps/org.rust-lang.rustup
      ../apps/org.zsh
      ../apps/rs.starship
      ../apps/sh.devenv
      ../apps/sh.nushell
      ../apps/sh.nushell/platforms/darwin.nix
    ];
  };
}
