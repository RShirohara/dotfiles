# Executes commands at login pre-zshrc.

## Load environment.d
source "${XDG_CONFIG_HOME}/environment.d/xdg-base-dir.conf"
source "${XDG_CONFIG_HOME}/environment.d/envvars.conf"

## Paths
### Ensure path arrays do not contain duplicates.
typeset -gU cdpath fpath mailpath path

### Set the list of directories that Zsh searches for programs.
path=(
    /usr/local/{bin,sbin}
    ~/.local/bin
    ${path}
)

## Alternate profiles
if [ -f "${ZDOTDIR}/alt-profile.zsh" ]; then
    source "${ZDOTDIR}/alt-profile.zsh"
fi
