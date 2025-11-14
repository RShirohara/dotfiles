const autopair_pairs: list<string> = ["()", "[]", "{}", '""', "''", "``"]

export def apply-autopair-left [key: string]: nothing -> nothing {
  let buffer: string = (commandline)
  let cursor_pos: int = (commandline get-cursor)
  let buffer_right: string = ($buffer | str substring $cursor_pos..)
  let key_pair_right: string = (
    $autopair_pairs
    | find --no-highlight $key
    | get 0
    | str substring 1..1
  )

  commandline edit --insert $key
  if ($buffer_right =~ $"^[($key_pair_right)]*") {
    commandline edit --insert $key_pair_right
    commandline set-cursor ($cursor_pos + 1)
  }
}

export def apply-autopair-right [key: string]: nothing -> nothing {
  let buffer: string = (commandline)
  let cursor_pos: int = (commandline get-cursor)
  let buffer_next_char: string = (
    $buffer
    | str substring $cursor_pos..
    | str substring 0..0
  )

  if ($buffer_next_char == $key) {
    commandline set-cursor ($cursor_pos + 1)
  } else {
    commandline edit --insert $key
  }
}

export def apply-autopair-same [key: string]: nothing -> nothing {
  let buffer: string = (commandline)
  let cursor_pos: int = (commandline get-cursor)
  let buffer_left_key_chars_mod: int = (
    match $cursor_pos {
      0 => "",
      1.. => {$buffer | str substring ..($cursor_pos - 1)}
    }
    | split chars
    | where $it == $key
    | length
    | $in mod 2
  )
  let buffer_right_key_chars_mod: int = (
    $buffer
    | str substring $cursor_pos..
    | split chars
    | where $it == $key
    | length
    | $in mod 2
  )
  let buffer_next_char: string = (
    $buffer
    | str substring $cursor_pos..
    | str substring 0..0
  )

  if ($buffer_left_key_chars_mod == $buffer_right_key_chars_mod) {
    if ($buffer_next_char == $key) {
      commandline set-cursor ($cursor_pos + 1)
    } else {
      commandline edit --insert ($key + $key)
      commandline set-cursor ($cursor_pos + 1)
    }
  } else {
    commandline edit --insert $key
  }
}

export def apply-autopair-backspace []: nothing -> nothing {
  let buffer: string = (commandline)
  let cursor_pos: int = (commandline get-cursor)
  let buffer_left: string = match $cursor_pos {
    0 => "",
    1.. => {$buffer | str substring ..($cursor_pos - 1)}
  }
  let buffer_right: string = ($buffer | str substring $cursor_pos..)
  let buffer_prev_char: string = (
    $buffer_left
    | str substring (($buffer_left | str length) - 1)..(($buffer_left | str length) - 1)
  )
  let buffer_next_char: string = ($buffer_right | str substring 0..0)

  let updated_buffer = if (
    ($autopair_pairs | where $it == ($buffer_prev_char + $buffer_next_char) | length) >= 1
  ) {
    ($buffer_left | str substring ..-2) + ($buffer_right | str substring 1..)
  } else {
    ($buffer_left | str substring ..-2) + $buffer_right
  }
  commandline edit --replace $updated_buffer
  commandline set-cursor ($cursor_pos - 1)
}

export-env {
  $env.config.cursor_shape.emacs = "blink_line"

  $env.config.keybindings ++= [
    {
      name: "autopair_parenthesis_left",
      modifier: "none"
      keycode: "char_(",
      mode: ["emacs", "vi_insert"],
      event: [
        { send: "ExecuteHostCommand", cmd: "editor apply-autopair-left '('" }
      ]
    },
    {
      name: "autopair_parenthesis_right",
      modifier: "none"
      keycode: "char_)",
      mode: ["emacs", "vi_insert"],
      event: [
        { send: "ExecuteHostCommand", cmd: "editor apply-autopair-right ')'" }
      ]
    },
    {
      name: "autopair_square_bracket_left",
      modifier: "none"
      keycode: "char_[",
      mode: ["emacs", "vi_insert"],
      event: [
        { send: "ExecuteHostCommand", cmd: "editor apply-autopair-left '['" }
      ]
    },
    {
      name: "autopair_square_bracket_right",
      modifier: "none"
      keycode: "char_]",
      mode: ["emacs", "vi_insert"],
      event: [
        { send: "ExecuteHostCommand", cmd: "editor apply-autopair-right ']'" }
      ]
    },
    {
      name: "autopair_curly_bracket_left",
      modifier: "none"
      keycode: "char_{",
      mode: ["emacs", "vi_insert"],
      event: [
        { send: "ExecuteHostCommand", cmd: "editor apply-autopair-left '{'" }
      ]
    },
    {
      name: "autopair_curly_bracket_right",
      modifier: "none"
      keycode: "char_}",
      mode: ["emacs", "vi_insert"],
      event: [
        { send: "ExecuteHostCommand", cmd: "editor apply-autopair-right '}'" }
      ]
    },
    {
      name: "autopair_quotation",
      modifier: "none"
      keycode: 'char_"',
      mode: ["emacs", "vi_insert"],
      event: [
        { send: "ExecuteHostCommand", cmd: "editor apply-autopair-same '\"'" }
      ]
    },
    {
      name: "autopair_apostrophe",
      modifier: "none"
      keycode: "char_'",
      mode: ["emacs", "vi_insert"],
      event: [
        { send: "ExecuteHostCommand", cmd: "editor apply-autopair-same \"'\"" }
      ]
    },
    {
      name: "autopair_grave",
      modifier: "none"
      keycode: "char_`",
      mode: ["emacs", "vi_insert"],
      event: [
        { send: "ExecuteHostCommand", cmd: "editor apply-autopair-same '`'" }
      ]
    },
    {
      name: "autopair_backspace",
      modifier: "none"
      keycode: "Backspace",
      mode: ["emacs", "vi_insert"],
      event: [
        { send: "ExecuteHostCommand", cmd: "editor apply-autopair-backspace" }
      ]
    }
  ]
}
