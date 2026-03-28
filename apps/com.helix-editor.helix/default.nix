{ ... }: {
  programs.helix.enable = true;

  programs.helix.defaultEditor = true;
  programs.helix.settings = {
    editor.bufferline = "always";
    editor.color-modes = true;
    editor.cursor-shape.insert = "bar";
    editor.cursor-shape.normal = "bar";
    editor.cursor-shape.select = "underline";
    editor.indent-guides.render = true;
    editor.indent-guides.skip-levels = 1;
    editor.scroll-lines = 5;
    editor.soft-wrap.enable = true;
    editor.statusline.left = [
      "mode"
      "spacer"
      "version-control"
      "diagnostics"
    ];
    editor.statusline.center = [
      "spinner"
    ];
    editor.statusline.right = [
      "position"
      "primary-selection-length"
      "file-encoding"
      "file-line-ending"
      "file-type"
    ];
    editor.whitespace.characters.tabpad = "·";
    editor.whitespace.render.newline = "none";
    editor.whitespace.render.space = "all";
    editor.whitespace.render.tab = "all";
    theme = "github_dark";
  };
}
