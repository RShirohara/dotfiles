# `io.github.rshirohara.dotfiles`

RShirohara's dotfiles managed by [chezmoi](https://www.chezmoi.io).

## Supported environments

- macOS
  - Requirements:
    - Package Manager: [Homebrew](https://brew.sh)
- Linux
  - Distributions:
    - Red Hat
  - Requirements:
    - Package Manager for CLI Applications: [Homebrew](https://brew.sh)
    - Package Manager for GUI Applications (optional): [Flatpak](https://flatpak.org/)

## Installation

1. Install [chezmoi](https://www.chezmoi.io).
2. Run this command to apply dotfiles:

    ```shell
    chezmoi init \
      --apply \
      --source="~/Workspace/github.com/RShirohara/dotfiles" \
      github.com/RShirohara/dotfiles
    ```
