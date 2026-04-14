{ pkgs, ... }: {
  services.gpg-agent.pinentry.package = pkgs.pinentry-tty;
}
