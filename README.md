# dotfiles

RShirohara's dotfiles managed by [chezmoi](https://github.com/twpayne/chezmoi).

## Supported environment

- Linux
  - Arch
  - Debian
  - Red Hat

## Requirement

- Shell: [Zsh](https://github.com/zsh-users/zsh)
- Editor: [Helix](https://github.com/helix-editor/helix)
- Version Control: [Git](https://github.com/git/git)
  - Credential Helper:
    - Windows: [Git Credential Manager](https://github.com/git-ecosystem/git-credential-manager)
    - Linux:
      - [`git-credential-libsecret`](https://pkgs.org/search/?q=git-credential-libsecret)
      - [`git-credential-oauth`](https://github.com/hickford/git-credential-oauth)

## Installation

This setup using chezmoi [one-line binary install process](https://www.chezmoi.io/install/#one-line-binary-install).

Run this command:

```shell
sh -c "$(curl -fsLS get.chezmoi.io)" -- -b ${HOME}/.local/bin
~/.local/bin/chezmoi init -a -S ~/Projects/github.com/RShirohara/dotfiles github.com/RShirohara
```
