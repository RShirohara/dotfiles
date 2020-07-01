# Proxy settings

proxy=""
port=""

export http_proxy="http://$proxy:$port"
export HTTP_PROXY=$http_proxy
export https_proxy="http://$proxy:$port"
export HTTPS_PROXY=$https_proxy
export ftp_proxy="http://$proxy:$port"
export FTP_PROXY=$ftp_proxy
export rsync_proxy="http://$proxy:$port"
export RSYNC_PROXY=$rsync_proxy
export no_proxy="localhost,127.0.0.1"
export NO_PROXY=$no_proxy
