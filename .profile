# .profile
# Author: @RShirohara

#
# Browser
#

# WSL: wsl-command/open.sh
if [[ -f /proc/sys/fs/binfmt_misc/WSLInterop ]]; then
  export BROWSER='open'
# Termux: termux-open
elif [[ $OS = 'Android']]; then
  export BROWSER='termux-open'
fi
