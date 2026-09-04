{ ... }: {
  programs.git.includes = [
    {
      condition = "gitdir:~/Workspace/codeberg.org/**";
      contents = {
        commit.gpgSign = true;
        gpg.format = "ssh";
        user.email = "rshirohara@third-branches.net";
        user.name = "Ray Shirohara";
        user.signingKey = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIKJNQ34Y8/tBKVVtw1KnkUgg9uE6VeqXJjqnjyTlTB0Y";
      };
    }
    {
      condition = "gitdir:~/Workspace/github.com/**";
      contents = {
        commit.gpgSign = true;
        gpg.format = "ssh";
        user.email = "rshirohara@third-branches.net";
        user.name = "Ray Shirohara";
        user.signingKey = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIKJNQ34Y8/tBKVVtw1KnkUgg9uE6VeqXJjqnjyTlTB0Y";
      };
    }
  ];
}
