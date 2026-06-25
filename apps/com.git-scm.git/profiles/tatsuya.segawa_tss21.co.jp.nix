{ ... }: {
  programs.git.includes = [
    {
      condition = "gitdir:~/Workspace/github.com/**";
      contents = {
        commit.gpgSign = true;
        gpg.format = "ssh";
        user.email = "tatsuya.segawa@tss21.co.jp";
        user.name = "Tatsuya Segawa";
        user.signingKey = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIAMcgv6fs9sfysApnA2ssztYEjB6t24oRMmPtqPHrHLt";
      };
    }
    {
      condition = "gitdir:~/Workspace/gitlab.kccs-platform-dev.com/**";
      contents = {
        commit.gpgSign = true;
        gpg.format = "ssh";
        user.email = "tatsuya.segawa@tss21.co.jp";
        user.name = "Tatsuya Segawa";
        user.signingKey = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIAMcgv6fs9sfysApnA2ssztYEjB6t24oRMmPtqPHrHLt";
      };
    }
  ];
}
