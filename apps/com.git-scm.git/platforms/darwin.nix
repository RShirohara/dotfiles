{ pkgs, ... }: {
  home.packages = [
    pkgs.git-credential-oauth
  ];

  programs.git.settings = {
    credential.helper = [
      "osxkeychain"
      "oauth"
    ];
  };
}
