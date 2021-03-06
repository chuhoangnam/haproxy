#!/bin/sh

show_usage() {
  echo "Run set_server [up/down] backend_name/server_name"
  exit
}

set_server() {
  echo "$1 server $2" | socat stdio /var/run/haproxy.sock
  echo "  => Server $2 is $1d"
}

if [ $# -lt 2 ]
then
  show_usage
fi

case $1 in
  "up")
    set_server "enable" $2
    ;;
  "down")
    set_server "disable" $2
    ;;
  *)
    show_usage
    exit
    ;;
esac
