def create_set_title_pre_execution []: nothing -> closure {
  return {
    let user: string = (whoami)
    let host: string = (sys host | get "hostname")
    let cmd: string = (commandline)
    print --no-newline $"(ansi title)($user)@($host): ($cmd)(ansi reset)"
  }
}

def create_set_title_pre_prompt []: nothing -> closure {
  return {
    let user: string = (whoami)
    let host: string = (sys host | get "hostname")
    let dir: string = ($env.PWD | str replace $nu.home-path "~")
    print --no-newline $"(ansi title)($user)@($host): ($dir)(ansi reset)"
  }
}

export-env {
  $env.config.bracketed_paste = true
  $env.config.shell_integration.osc133 = true
  $env.config.shell_integration.osc2 = false
  $env.config.shell_integration.osc633 = true
  $env.config.shell_integration.osc7 = true
  $env.config.shell_integration.osc8 = true
  $env.config.shell_integration.reset_application_mode = true
  $env.config.use_kitty_protocol = true

  $env.config.hooks.pre_execution ++= [
    (create_set_title_pre_execution)
  ]
  $env.config.hooks.pre_prompt ++= [
    (create_set_title_pre_prompt)
  ]
}
