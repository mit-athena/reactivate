#!/bin/sh

if [ "--daemons" = "$1" ]; then
    logger -p user.notice -t reactivate "policy-rc.d called by legacy code"
    exit
fi

case "$2" in
    \(*\))
        exit 101
        ;;
esac

if ! [ -e /ClusterLogin ]; then
    logger -p user.notice -t reactivate "policy-rc.d in effect when /ClusterLogin not present!!"
fi

exit 101
