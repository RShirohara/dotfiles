export-env {
  $env.config.completions.algorithm = "fuzzy"

  $env.config.menus ++= [
    {
      name: "completion_menu"
      only_buffer_difference: false
      marker: "| "
      type: {
        layout: "columnar"
        "columns": 1
      }
      style: {
        text: "green"
        selected_text: "green_bold"
      }
    }
  ]
}
