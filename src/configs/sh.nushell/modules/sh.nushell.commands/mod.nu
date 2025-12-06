export def la [path?: path = .] {
  ls --all --long $path
  | select "name" "type" "mode" "size" "modified"
  | sort-by --ignore-case "type" "name"
}

export alias ... = ../..
export alias .... = ../../..
export alias ..... = ../../../..
