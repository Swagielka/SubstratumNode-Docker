# SubstratumNode-Docker
A dockerrized version of SubstratumNode

Disclaimer: I did not create SubstratumNode, I just provide the docker image! I'm not responsible for any misbehaviours!
https://substratum.net/
The Container always installs the newest Version upon initial "Docker run".

This project uses:
- SubstratumNode
- Ubuntu
- Rust
- Docker (duh.)

## How To Use
- docker run -it -p '53:53/tcp' kukielka/substratum-node
- Change your locally used DNS Server to the containers IP :)