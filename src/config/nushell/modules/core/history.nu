# History configs for nushell.

export-env {
  ## Configs
  $env.config.history.file_format = "sqlite"
  $env.config.history.max_size = 100_000_000

  ### Menus
  $env.config.menus ++= [
    {
      name: "history_menu"
      only_buffer_difference: false
      marker: "# "
      type: {
        layout: "list"
        page_size: 10
      }
      style: {
        text: "green"
        selected_text: "green_bold"
      }
    }
  ]
}
