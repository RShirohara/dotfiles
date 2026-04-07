{ ... }: {
  programs.git.includes = [
    {
      condition = "gitdir:~/Workspace/github.com/**";
      contents = {
        user.email = "tatsuya.segawa@tss21.co.jp";
        user.name = "Tatsuya Segawa";
      };
    }
  ];
}
