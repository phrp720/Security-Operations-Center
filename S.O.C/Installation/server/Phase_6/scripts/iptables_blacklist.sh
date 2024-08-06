#!/bin/bash

function valid_ip() {
    local ip=$1
    local stat=1

    if [[ $ip =~ ^[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}$ ]]; then
        OIFS=$IFS
        IFS='.'
        ip=($ip)
        IFS=$OIFS
        [[ ${ip[0]} -le 255 && ${ip[1]} -le 255 && ${ip[2]} -le 255 && ${ip[3]} -le 255 ]]
        stat=$?
    fi
    return $stat
}

if ! command -v iptables &> /dev/null; then
    echo -e -n "You need to have \E[33miptables\E[0m installed"
    echo ""
    exit
fi

if [ -z "$1" ]; then
    echo -e -n "\E[36mUsage:\E[33m ./$(basename $0) [-r] IP \E[0m"
    echo ""
    exit
fi

if [ "$1" == "-r" ]; then
    if [ -z "$2" ]; then
        echo -e -n "\E[36mUsage:\E[33m ./$(basename $0) [-r] IP \E[0m"
        echo ""
        exit
    fi

    if valid_ip $2; then
        echo -e -n "Removing IP \E[33m$2\E[0m"
        echo ""
        iptables -D INPUT -s $2 -j DROP
        iptables-save > /etc/iptables/rules.v4
        systemctl restart netfilter-persistent
    else
        echo -e -n "Invalid IP \E[32m$2\E[0m"
    fi
    echo ""
    exit
fi

if valid_ip $1; then
    if iptables-save | grep -q "^-A INPUT -s $1/32 -j DROP$"; then
        echo -e -n "IP \E[33m$1\E[0m already exists"
    else
        echo -e -n "Adding IP \E[33m$1\E[0m"
        echo ""
        iptables -A INPUT -s $1 -j DROP
        iptables-save > /etc/iptables/rules.v4
        systemctl restart netfilter-persistent
    fi
else
    echo -e -n "Invalid IP \E[32m$1\E[0m"
fi
echo ""
