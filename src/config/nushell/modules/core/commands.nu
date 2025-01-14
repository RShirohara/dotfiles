# Command aliases for nushell.

## Filesystem
export def ll [path?: path = .] {
  ls $path
  | sort-by --ignore-case "type" "name"
}

export def la [path?: path = .] {
  ls --all $path
  | sort-by --ignore-case "type" "name"
}
