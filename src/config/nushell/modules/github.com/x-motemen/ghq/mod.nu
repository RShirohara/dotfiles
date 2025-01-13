# Menu integrations for github.com/x-motemen/ghq.

## Functions
export def --env ghq-cd []: nothing -> nothing {
  let root: path = (ghq root)
  let repo: string = (
    ghq list
    | lines
    | input list --fuzzy
  )
  | default ""
  let target: path = ($root | path join $repo)
  cd $target
}

## Config
export-env {
  $env.config.keybindings ++= [
    {
      name: "ghq_menu"
      modifier: "alt"
      keycode: "char_g"
      mode: "emacs"
      event: [
        { edit: "Clear" }
        { send: "ExecuteHostCommand" cmd: "mod ghq-cd" }
        { send: "Enter" }
      ]
    }
  ]
}
