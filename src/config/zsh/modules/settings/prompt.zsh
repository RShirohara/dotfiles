# Zsh prompt settings.

## Functions
function change_cursor_shape() {
  echo -ne '\e[5 q'
}

autoload -Uz add-zsh-hook
add-zsh-hook precmd change_cursor_shape
