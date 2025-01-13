# Display configs for nushell.

## Config
export-env {
  ## Color
  $env.config.color_config = {
    shape_external: "red_bold"
    shape_externalarg: "cyan"
    shape_external_resolved: "green"
    shape_flag: "cyan"
    shape_internalcall: "green"
    shape_nothing: "dark_gray"
  }

  ## Table
  $env.config.table.mode = "light"
  $env.config.table.index_mode = "auto"

  ## Miscellaneous
  $env.config.highlight_resolved_externals = true
  $env.config.ls.use_ls_colors = true
}
