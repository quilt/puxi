Baikal Testnet
==============

## Starting Geth

```bash
$ geth init --datadir ~/.ethereum/baikal ./geth/genesis.json
$ cp ./geth/static-nodes.json ~/.ethereum/baikal/geth/
$ geth --datadir ~/.ethereum/baikal --networkid 257463 --nodiscover --ethstats="{NAME}:baikalnet@baikal.quilt.link"
```
