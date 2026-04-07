{ config, ... }: {
  home.sessionVariables = {
    AWS_VAULT_BACKEND = "file";
    AWS_VAULT_FILE_DIR = "${config.xdg.dataHome}/aws-vault";
  };
}
