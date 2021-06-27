# zsh functions.

## Show message
m_header() {
    printf ' \033[3;1m%s\33[m\n' "$*"
}

m_indent() {
    local sp=''
    local st=''
    if [ -n "$2" ]; then
        st="echo '$2'"
    else
        st='cat'
    fi

    for ((i=0; i<${1:-2}; i++)); do
        sp="${sp} "
    done

    $st | sed -E "s/^/$sp/g"
}

m_arrow() {
    printf " \033[37;1m%s\033[m\n" "➜ $*"
}

m_done() {
    printf " \033[37;1m%s\033[m ...\033[32mOK\033[m\n" "✔ $*"
}

m_error() {
    printf " \033[31m%s\033[m\n" "✖ $*" 1>&2
}

m_warning() {
    printf " \033[31m%s\033[m\n" "$*"
}

m_end() {
    if [ "$2" = 0 ]; then
        m_done "$1"
    else
        m_error "$1"
    fi
}

## Get device info
get_os (){
    local os
    case "${OSTYPE}" in
        'linux-gnu')
            os='linux'
            ;;
        'linux-android')
            os='andoid'
            ;;
        *)
            os='unknown'
            ;;
    esac
    echo -E"${os}"
}

get_platform() {
    local plat
    case `get_os` in
        'linux')
            if [ -f /proc/sys/fs/binfmt_misc/WSLInterop ]; then
                plat='wsl'
            fi
            ;;
        'android')
            if [ -d /data/data/com.termux ]; then
                plat='termux'
            fi
            ;;
        *)
            plat='unknown'
            ;;
    esac
    echo -E "${plat}"
}

## Check exist command
exist_command() {
    which "$1" &>/dev/null
    return "$?"
}

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
            m_error 'Command not found'
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

## Open on terminal.
open() {
    local send
    case `get_platform` in
        'wsl')
            send='wsl-open'
            ;;
        'termux')
            send='termux-open'
            ;;
        *)
            m_error 'Command not found'
            return 1
            ;;
    esac

    $send "$*"
}
