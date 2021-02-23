# zsh functions.

## copy & paste
copy() {
    local ge
    local se
    case `get_platform` in
        'wsl')
            ge='wsl-copy'
            se='wsl-copy'
            ;;
        'termux')
            ge='termux-clipboard-ge'
            se='termux-clipboard-se'
            ;;
        *)
            m_error 'command not found'
            return 1
            ;;
    esac

    case "$1" in
        '-h'|'--help')
            if [ $ge = $se ]; then
                $ge -h
            else;
                $ge -h
                $se -h
            fi
            ;;
        '-n')
            $ge | sed -z 's/\n$//'
            ;;
        '')
            if [ -p /dev/stdin ]; then
                cat - | $se
            else
                $ge
            fi
            ;;
        *)
            $se "$*"
    esac
}
