{ inputs, ... }: {
  flake.homeConfigurations."rshirohara@pc-2fj26x5r" = inputs.home-manager.lib.homeManagerConfiguration {
    pkgs = import inputs.nixpkgs { system = "aarch64-darwin"; };
    modules = [
      {
        home.homeDirectory = "/Users/rshirohara";
        home.stateVersion = "25.11";
        home.username = "rshirohara";
      }
    ];
  };
}
