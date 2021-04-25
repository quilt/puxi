Puxi (浦西) Testnet
==============

## Starting Geth

[Source](https://github.com/quilt/go-ethereum/tree/eip-3074)

```bash
$ geth init --datadir ~/.ethereum/puxi ./geth/genesis.json
$ cp ./geth/static-nodes.json ~/.ethereum/puxi/geth/
$ geth --datadir ~/.ethereum/puxi --networkid 257463 --nodiscover --ethstats="yournode:puxinet@puxi.quilt.link"
```

## Starting OpenEthereum (`parity`)

[Source](https://github.com/quilt/openethereum/tree/eip-3074)

```bash
$ openethereum --chain puxi
```
