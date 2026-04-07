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
        "nothing" => (
          powershell.exe -noprofile -command '
            [Console]::OutputEncoding = [System.Text.Encoding]::UTF8;
            Get-Clipboard -Raw
          '
        ),
        _ => (
          $in
          | to text
          | powershell.exe -noprofile -command '
              [Console]::InputEncoding = [System.Text.Encoding]::UTF8;
              $reader = [System.IO.StreamReader]::new(
                [System.IO.Stream]::Synchronized([System.Console]::OpenStandardInput())
              );
              $reader.ReadToEnd() | Set-Clipboard
            '
        )
      }
    }
  '';
}
