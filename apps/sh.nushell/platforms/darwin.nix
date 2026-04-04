{ ... }: {
  programs.nushell.extraConfig = ''
    # Copy and paste using system clipboard.
    @example "Copy:" {echo "foobar" | clip}
    @example "Paste:" {clip} --result "foobar"
    def clip []: [
      any -> nothing
      nothing -> string
    ] {
      match ($in | describe) {
        "nothing" => (pbpaste),
        _ => ($in | to text | pbcopy)
      }
    }
  '';
}
