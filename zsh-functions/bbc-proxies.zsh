http_proxy="http://www-cache.reith.bbc.co.uk:80"
socks_proxy="socks-gw.reith.bbc.co.uk:1085"
ftp_proxy="ftp://ftp-gw.reith.bbc.co.uk:21"

function proxyon {
  export HTTP_PROXY=$http_proxy
  export HTTPS_PROXY=$http_proxy
  export HTTPPROXY=$http_proxy
  export HTTPSPROXY=$http_proxy
  export RSYNC_PROXY=$http_proxy

  export http_proxy=$http_proxy
  export https_proxy=$http_proxy
  export httpproxy=$http_proxy
  export httpsproxy=$http_proxy
  export rsync_proxy=$http_proxy

  export FTP_PROXY=$ftp_proxy
  export ftp_proxy=$ftp_proxy

  export SOCKS_PROXY=$socks_proxy
  export socks_proxy=$socks_proxy

  export no_proxy="localhost, 127.0.0.1, *.dev, *.local, *.core.bbc.co.uk, *.dev.bbc.co.uk"
}

function proxyoff {
  unset HTTP_PROXY
  unset HTTPS_PROXY
  unset HTTPPROXY
  unset HTTPSPROXY
  unset RSYNC_PROXY

  unset http_proxy
  unset https_proxy
  unset httpproxy
  unset httpsproxy
  unset rsync_proxy

  unset FTP_PROXY
  unset ftp_proxy

  unset SOCKS_PROXY
  unset socks_proxy

  unset no_proxy
}
