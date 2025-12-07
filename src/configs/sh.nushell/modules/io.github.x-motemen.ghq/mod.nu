alias core-cd = cd

export def --env cd []: nothing -> nothing {
  let root: string = (ghq root)
  let repo: string = (
    ghq list
    | lines
    | input list --fuzzy
    | default ""
  )

  let target: string = ($root | path join $repo)
  core-cd $target
}

export-env {
  $env.config.keybindings ++= [
    {
      name: "ghq_menu"
      modifier: "alt"
      keycode: "char_g"
      mode: ["emacs", "vi_normal"]
      event: [
        { send: "ExecuteHostCommand", cmd: "io.github.x-motemen.ghq cd" }
      ]
    }
  ]
}
