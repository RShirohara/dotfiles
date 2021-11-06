# zsh functions.

## Get OS name based ${OSTYPE}.
function get_ostype {
    local os="unknown"

    if [[ "$(cat /proc/version)" =~ [Mm]icrosoft ]]; then
        os="wsl"
    else
        case "${OSTYPE}" in
            darwin*)
                os="osx"
                ;;
            "linux-android")
                os="android"
                ;;
            linux-*)
                os="linux"
                ;;
        esac
    fi

    echo "${os}"
}

## Get Distro name.
function get_distro {
    local distro="unknown"

    if [ "$(get_ostype)" = "android" ] && [ -d "/data/data/com.termux" ]; then
        distro="termux"
    elif find_command "lsb_release"; then
        distro=$(lsb_release -si)
        distro="${distro:l}"
    elif [ -f /etc/os-release ]; then
        while IFS='' read -r line || [ -n "$line" ]; do
            if [[ "$line" = ID=* ]]; then
                distro="${line#ID=}"
                distro="${distro//\"}"
                break
            fi
        done < "$OS_RELEASE"
    fi

    echo "${distro}"
}

## Check command exists.
function find_command {
    command -v "$@" &>/dev/null
}
