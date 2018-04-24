#!/bin/bash

sudo cp /tmp/resolv.conf /etc/resolv.conf
sudo chmod -R 777 /node
export RUST_BACKTRACE=1
sudo /node/node --dns_servers 8.8.8.8 &