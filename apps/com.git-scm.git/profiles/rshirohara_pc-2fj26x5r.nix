{ config, ... }: {
  programs.git.includes = [
    {
      condition = "gitdir:~/Workspace/codeberg.org/**";
      contents = {
        commit.gpgSign = true;
        gpg.format = "ssh";
        user.email = "rshirohara@third-branches.net";
        user.name = "Ray Shirohara";
        user.signingKey = "${config.home.homeDirectory}/Library/Containers/com.maxgoedjen.Secretive.SecretAgent/Data/PublicKeys/6390a366c8054c35f280aab9748a04f4.pub";
      };
    }
    {
      condition = "gitdir:~/Workspace/github.com/**";
      contents = {
        commit.gpgSign = true;
        gpg.format = "ssh";
        user.email = "rshirohara@third-branches.net";
        user.name = "Ray Shirohara";
        user.signingKey = "${config.home.homeDirectory}/Library/Containers/com.maxgoedjen.Secretive.SecretAgent/Data/PublicKeys/6390a366c8054c35f280aab9748a04f4.pub";
      };
    }
  ];
}
