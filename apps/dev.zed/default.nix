{ pkgs, ... }:
{
  home.packages = [
    pkgs.alejandra
    pkgs.hackgen-font
    pkgs.nil
    pkgs.nixd
  ];
  programs.zed-editor.enable = true;

  programs.zed-editor.extensions = [
    "git-firefly"
    "github-theme"
    "nix"
    "toml"
  ];
  programs.zed-editor.mutableUserDebug = false;
  programs.zed-editor.mutableUserKeymaps = false;
  programs.zed-editor.mutableUserSettings = false;
  programs.zed-editor.mutableUserTasks = false;
  programs.zed-editor.userKeymaps = [ ];
  programs.zed-editor.userSettings = {
    auto_update = false;
    base_keymap = "VSCode";
    buffer_font_family = "HackGen";
    buffer_font_fallbacks = [
      "monospace"
    ];
    buffer_font_size = 14;
    code_lens = "on";
    diff_view_style = "unified";
    disable_ai = true;
    tabs = {
      file_icons = true;
      git_status = true;
    };
    line_ending = "prefer_lf";
    inlay_hints = {
      enabled = true;
    };
    languages = { };
    profiles = { };
    semantic_tokens = "combined";
    show_whitespaces = "all";
    tab_size = 2;
    telemetry = {
      diagnostics = false;
      metrics = false;
    };
    terminal = {
      cursor_shape = "bar";
      font_family = "HackGen Console NF";
      option_as_meta = true;
      shell = {
        with_arguments = {
          program = "zsh";
          args = [
            "--interactive"
            "-c"
            "nu"
          ];
        };
      };
    };
    theme = {
      dark = "GitHub Dark Dimmed";
      light = "GitHub Light";
    };
    title_bar = {
      show_sign_in = false;
    };
    project_panel = {
      dock = "left";
    };
    collaboration_panel = {
      button = false;
    };
    git_panel = {
      dock = "left";
      tree_view = true;
    };
    outline_panel = {
      dock = "right";
    };
    ui_font_family = ".SystemUIFont";
  };

  programs.nushell.extraConfig = ''
    if ($env | default null "TERM_PROGRAM" | get "TERM_PROGRAM") == "zed" {
      # Fix path resolving order on zed terminal.
      $env.PATH = (
        $env.PATH
        | prepend [
          $"($env.HOME)/.nix-profile/bin",
          "/nix/var/nix/profiles/default/bin"
        ]
        | uniq
      )
    }
  '';
}
