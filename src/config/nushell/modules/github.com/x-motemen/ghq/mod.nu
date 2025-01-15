# Menu integrations for github.com/x-motemen/ghq.

## Aliases (Internal)
alias core-cd = cd

## Functions
export def --env cd []: nothing -> nothing {
  let root: path = (ghq root)
  let repo: string = (
    ghq list
    | lines
    | input list --fuzzy
  )
  | default ""
  let target: path = ($root | path join $repo)
  core-cd $target
}

export-env {
  ## Config
  ### Keybinding
  $env.config.keybindings ++= [
    {
      name: "ghq_menu"
      modifier: "alt"
      keycode: "char_g"
      mode: "emacs"
      event: [
        { edit: "Clear" }
        { send: "ExecuteHostCommand" cmd: "ghq cd" }
        { send: "Enter" }
      ]
    }
  ]
}
