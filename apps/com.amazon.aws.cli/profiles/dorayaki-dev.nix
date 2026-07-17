{ ... }: {
  programs.awscli.settings = {
    "profile dorayaki-dev" = {
      region = "ap-northeast-1";
      mfa_serial = "arn:aws:iam::674417171764:mfa/dev-tatsuya-segawa";
    };
  };
}
