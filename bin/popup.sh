#!/usr/bin/env bash
open() {
    i3-msg "mode \"$1\"" 
    sh -c "$2"
    i3-msg 'mode "default"'
}

close() {
    i3-msg 'mode "default"'
    pkill -f "$1"
}

case "$1" in
    "open") open "$2" "$3";;
    "close") close "$2";;
    *) echo "you must use open or close"; exit 1 ;;
esac
