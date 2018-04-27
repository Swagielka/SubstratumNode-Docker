#!/bin/bash
source $HOME/.cargo/env
cd /git
git clone https://github.com/SubstratumNetwork/SubstratumNode.git
cd /git/SubstratumNode/node
cargo build --release --verbose
ln -sf /git/SubstratumNode/node/target/release/node /node/node
chmod -R 777 /node
export RUST_BACKTRACE=1
cp /tmp/resolv.conf /etc/resolv.conf
screen -A -m -d -S substratum-node /node/node --dns_servers 1.1.1.1
while [ ! -f /tmp/node.log ] ;
do
      sleep 1
done
sleep 5
tail -f /tmp/node.log