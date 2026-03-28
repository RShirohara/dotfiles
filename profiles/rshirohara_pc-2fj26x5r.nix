{ inputs, ... }: {
  flake.homeConfigurations."rshirohara@pc-2fj26x5r" = inputs.home-manager.lib.homeManagerConfiguration {
    pkgs = import inputs.nixpkgs { system = "aarch64-darwin"; };
    modules = [
      {
        nixpkgs.overlays = [
          inputs.brew-nix.overlays.default
        ];
      }
      {
        home.homeDirectory = "/Users/rshirohara";
        home.preferXdgDirectories = true;
        home.stateVersion = "25.11";
        home.username = "rshirohara";
      }
      ../apps/com.amazon.aws.cli
      ../apps/com.amazon.aws.cli/profiles/third-branches-prd.nix
      ../apps/com.git-scm.git
      ../apps/com.git-scm.git/platforms/darwin.nix
      ../apps/com.git-scm.git/profiles/rshirohara_proton.me.nix
      ../apps/com.helix-editor.helix
      ../apps/com.mitchellh.ghostty
    ];
  };
}
