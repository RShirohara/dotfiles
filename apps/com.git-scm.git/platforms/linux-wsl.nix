{ ... }: {
  programs.git.settings = {
    credential.helper = [
      "manager.exe"
    ];
  };
}
