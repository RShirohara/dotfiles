export ZSH_CONFIG_MODULE_DIR="${ZDOTDIR}/modules"

source "${ZSH_CONFIG_MODULE_DIR}/org.gnupg.gnupg/mod.sh"

if [[ $(command -v mise) ]]; then
  source "${ZSH_CONFIG_MODULE_DIR}/dev.jdx.mise/init.sh"
  source "${ZSH_CONFIG_MODULE_DIR}/dev.jdx.mise/mod.sh"
fi
