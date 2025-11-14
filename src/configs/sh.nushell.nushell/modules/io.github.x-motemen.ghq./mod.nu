alias core-cd = cd

export def --env cd []: nothing -> nothing {
  let root: path = (ghq root)
  let repo: string = (
    ghq list
    | lines
    | input list --fuzzy
    | default ""
  )

  let target: path = ($root | path join $repo)
  core-cd $target
}

export-env {
  $env.config.keybindings ++= [
    {
      name: "ghq_menu",
      modifier: "alt",
      keycode: "char_g",
      mode: "emacs"
      event: [
        { send: "ExecuteHostCommand", cmd: "io.github.x-motemen.ghq cd" }
      ]
    }
  ]
}
