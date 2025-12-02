if [[ $(command -v mise) ]]; then
  mise activate --shims zsh \
  > "${ZSH_CONFIG_MODULE_DIR}/dev.jdx.mise/mod.sh"
fi
