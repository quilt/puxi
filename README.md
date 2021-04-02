Alpine Testnet
==============

## Starting Geth

```bash
$ geth init --datadir ~/.ethereum/alpine ./geth/genesis.json
$ cp ./geth/static-nodes.json ~/.ethereum/alpine/geth/
$ geth --datadir ~/.ethereum/alpine --networkid 257463 --nodiscover
```
