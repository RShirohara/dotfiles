# dotfiles

RShirohara's dotfiles managed by [chezmoi](https://github.com/twpayne/chezmoi).

## Supported OS

- Arch Linux
- Android (Termux)

## Installation

1. Install chezmoi
2. Clone and apply dotfiles

   ```bash
   chezmoi init RShirohara -a -S ~/.dotfiles
   ```

## Applications

### Requirement

- Shell: [Zsh](https://github.com/zsh-users/zsh)
- Editor: [VS Code](https://github.com/microsoft/vscode), [Helix](https://github.com/helix-editor/helix)
- Dotfiles Management: [chezmoi](https://github.com/twpayne/chezmoi), `git`

Package lists: [package/requirements](./package/requirements)

### Coreutils Replacement

- `cat` -> [bat](https://github.com/sharkdp/bat)
- `diff` -> [delta](https://github.com/dandavison/delta)
- `find` -> [fd](https://github.com/sharkdp/fd)
- `grep` -> [ripgrep](https://github.com/BurntSushi/ripgrep)
- `ls` -> [exa](https://github.com/ogham/exa)
- `xxd` -> [hexyl](https://github.com/sharkdp/hexyl)

Package lists: [package/coreutils](./package/coreutils)