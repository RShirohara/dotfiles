# Define environment variables.

## Load environment.d on non-desktop environment.
{{- with $envs := ( cat
  (includeTemplate "config/environment.d/editor.conf" .)
)}}
{{- $envs
  | replaceAllRegex "\n" "\n\n"
  | replaceAllRegex "(^|\n) *#+.*?\n" ""
  | replaceAllRegex "\n+" "\n"
  | replaceAllRegex "\\$\\{(.+?):-(.+)\\}" "($$env | default \"$2\" \"$1\" | get \"$1\")"
  | replaceAllRegex "\\$\\{(.+)\\}" "($$env.$1)"
  | replaceAllRegex "\n(.*?)=\"(.+)\"" "\n$$env.$1 = $\"$2\""
}}
{{- end }}
if (
  $env
  | default "false" "DOTFILES_ENV_LOADED"
  | get "DOTFILES_ENV_LOADED"
) != "true" {
  {{- with $envs := ( cat
    (includeTemplate "config/environment.d/locale.conf" .)
    (includeTemplate "config/environment.d/xdg-user-dir/init.conf" .)
    (includeTemplate "config/environment.d/xdg-base-dirs/init.conf" .)
    (includeTemplate "config/environment.d/virtual-environments/init.conf" .)
    (includeTemplate "config/environment.d/gpg-socket.conf" .)
    (includeTemplate "config/environment.d/dotfiles-env-loaded.conf" .)
  )}}
  {{- $envs
    | replaceAllRegex "\n" "\n\n"
    | replaceAllRegex "(^|\n) *#+.*?\n" ""
    | replaceAllRegex "\n+" "\n"
    | replaceAllRegex "\\$\\{(.+?):-(.+)\\}" "($$env | default $$\"$2\" \"$1\" | get \"$1\")"
    | replaceAllRegex "\\$\\{(.+)\\}" "($$env.$1)"
    | replaceAllRegex "\n(.*?)=\"(.+)\"" "\n  $$env.$1 = $\"$2\""
  }}
  {{- end }}
}

## Add user-level binary location to `$env.PATH`.
$env.PATH = (
  $env.PATH
  | split row (char esep)
  | prepend $"($env.HOME)/.local/bin"
  | uniq
)
