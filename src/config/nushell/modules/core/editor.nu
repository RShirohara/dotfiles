# Editor configs for nushell.

export-env {
  ## Configs
  $env.config.cursor_shape.emacs = "blink_line"

  ### KeyBindings
  $env.config.keybindings ++= [
    {
      name: "bracket_pair_quot"
      modifier: "none"
      keycode: "char_\""
      mode: [ "emacs" "vi_insert" ]
      event: [
        { edit: "InsertChar" value: "\"" }
        { edit: "InsertChar" value: "\"" }
        { edit: "MoveLeft" }
      ]
    },
    {
      name: "bracket_pair_apos"
      modifier: "none"
      keycode: "char_'"
      mode: [ "emacs" "vi_insert" ]
      event: [
        { edit: "InsertChar" value: "'" }
        { edit: "InsertChar" value: "'" }
        { edit: "MoveLeft" }
      ]
    },
    {
      name: "bracket_pair_paren"
      modifier: "none"
      keycode: "char_("
      mode: [ "emacs" "vi_insert" ]
      event: [
        { edit: "InsertChar" value: "(" }
        { edit: "InsertChar" value: ")" }
        { edit: "MoveLeft" }
      ]
    },
    {
      name: "bracket_pair_apos"
      modifier: "none"
      keycode: "char_'"
      mode: [ "emacs" "vi_insert" ]
      event: [
        { edit: "InsertChar" value: "'" }
        { edit: "InsertChar" value: "'" }
        { edit: "MoveLeft" }
      ]
    },
    {
      name: "bracket_pair_sqb"
      modifier: "none"
      keycode: "char_["
      mode: [ "emacs" "vi_insert" ]
      event: [
        { edit: "InsertChar" value: "[" }
        { edit: "InsertChar" value: "]" }
        { edit: "MoveLeft" }
      ]
    },
    {
      name: "bracket_pair_cub"
      modifier: "none"
      keycode: "char_{"
      mode: [ "emacs" "vi_insert" ]
      event: [
        { edit: "InsertChar" value: "{" }
        { edit: "InsertChar" value: "}" }
        { edit: "MoveLeft" }
      ]
    },
  ]
}
