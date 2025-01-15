# Terminal configs for nushell.

## Functions
def create_set_title_pre_execution []: nothing -> closure {
  return {
    let user = (whoami)
    let host = (sys host | get "hostname")
    let cmd = (commandline)
    print --no-newline $"(ansi title)($user)@($host): ($cmd)(ansi reset)"
  }
}

def create_set_title_pre_prompt []: nothing -> closure {
  return {
    let user = (whoami)
    let host = (sys host | get "hostname")
    let dir = ($env.PWD | str replace $nu.home-path "~")
    print --no-newline $"(ansi title)($user)@($host): ($dir)(ansi reset)"
  }
}

export-env {
  ## Configs
  $env.config.use_kitty_protocol = true
  $env.config.shell_integration.osc2 = false
  $env.config.shell_integration.osc7 = true
  $env.config.shell_integration.osc8 = true
  $env.config.shell_integration.osc133 = true
  $env.config.shell_integration.osc633 = true
  $env.config.shell_integration.reset_application_mode = true
  $env.config.bracketed_paste = true

  ### Hooks
  $env.config.hooks.pre_execution ++= [
    (create_set_title_pre_execution)
  ]
  $env.config.hooks.pre_prompt ++= [
    (create_set_title_pre_prompt)
  ]
}
