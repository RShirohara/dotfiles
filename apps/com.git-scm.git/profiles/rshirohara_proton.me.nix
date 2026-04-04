{ ... }: {
  programs.git.includes = [
    {
      condition = "gitdir:~/Workspace/codeberg.org/**";
      contents = {
        commit.gpgSign = true;
        user.email = "RShirohara@proton.me";
        user.name = "Ray Shirohara";
        user.signingKey = "E7321F26D8EACF39!";
      };
    }
    {
      condition = "gitdir:~/Workspace/github.com/**";
      contents = {
        commit.gpgSign = true;
        user.email = "RShirohara@proton.me";
        user.name = "Ray Shirohara";
        user.signingKey = "E7321F26D8EACF39!";
      };
    }
  ];
}
