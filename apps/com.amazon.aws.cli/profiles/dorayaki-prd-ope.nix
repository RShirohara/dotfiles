{ ... }: {
  programs.awscli.settings = {
    "profile dorayaki-prd-ope" = {
      region = "ap-northeast-1";
      mfa_serial = "arn:aws:iam::096853943907:mfa/prd-ope-tatsuya-segawa";
    };
  };
}
