#!/bin/bash
cp /tmp/resolv.conf /etc/resolv.conf
screen -A -m -d -S substratum-node /node/SubstratumNode --dns_servers 1.1.1.1
while [ ! -f /tmp/SubstratumNode.log ] ;
do
      sleep 1
done
sleep 5
tail -f /tmp/SubstratumNode.log