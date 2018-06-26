#!/bin/bash
source $HOME/.cargo/env
cd /git
git clone https://github.com/SubstratumNetwork/SubstratumNode.git
cd /git/SubstratumNode/node
cargo build --release --verbose
ln -sf /git/SubstratumNode/node/target/release/SubstratumNode /node/SubstratumNode
chmod -R 777 /node
export RUST_BACKTRACE=1
cp /tmp/resolv.conf /etc/resolv.conf
screen -A -m -d -S substratum-node /node/SubstratumNode --dns_servers 1.1.1.1
while [ ! -f /tmp/SubstratumNode.log ] ;
do
      sleep 1
done
sleep 5
tail -f /tmp/SubstratumNode.log
