{ ... }: {
  programs.awscli.settings = {
    "third-branches-prd" = {
      region = "ap-northeast-1";
      sso_account_id = "195790709853";
      sso_region = "ap-northeast-1";
      sso_role_name = "PowerUserAccess";
      sso_start_url = "https://d-95674e6eef.awsapps.com/start";
    };
  };
}
