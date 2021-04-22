Baikal Testnet
==============

## Starting Geth

[Source](https://github.com/quilt/go-ethereum/tree/eip-3074)

```bash
$ geth init --datadir ~/.ethereum/baikal ./geth/genesis.json
$ cp ./geth/static-nodes.json ~/.ethereum/baikal/geth/
$ geth --datadir ~/.ethereum/baikal --networkid 257463 --nodiscover --ethstats="{NAME}:baikalnet@baikal.quilt.link"
```

## Starting OpenEthereum (`parity`)

[Source](https://github.com/quilt/openethereum/tree/eip-3074)

```bash
$ openethereum --chain baikal
```
