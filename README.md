# dotfiles

RShirohara's dotfiles managed by [chezmoi](https://github.com/twpayne/chezmoi).

## Supported Environment

- Linux
  - Distro: Arch Linux
  - (Optional) Platform: WSL
- Android
  - Platform: Termux

## Installation

1. Install chezmoi
2. Clone and apply dotfiles

   ```bash
   chezmoi init RShirohara -a -S ~/.dotfiles
   ```

## Applications

### Requirement

- Dotfiles Management:
  - [chezmoi](https://github.com/twpayne/chezmoi),
  - `git`
- Shell: [Zsh](https://github.com/zsh-users/zsh)
- Editor:
  - [Helix](https://github.com/helix-editor/helix)
  - [VS Code](https://github.com/microsoft/vscode) (Optional)

### Coreutils Replacement

- `cat` -> [bat](https://github.com/sharkdp/bat)
- `diff` -> [delta](https://github.com/dandavison/delta)
- `find` -> [fd](https://github.com/sharkdp/fd)
- `grep` -> [ripgrep](https://github.com/BurntSushi/ripgrep)
- `ls` -> [eza](https://github.com/eza-community/eza)
- `od` -> [hexyl](https://github.com/sharkdp/hexyl)
