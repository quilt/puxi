Puxi (浦西) Testnet
==============

The Puxi testnet is a long-running network for developers to experiment with
EIP-3074.

## Helpful links
* ethstats - https://puxi.quilt.link
* remix - https://remix.puxi.quilt.link
* signer cli - https://github.com/quilt/dahe

## Starting Geth

[Source](https://github.com/quilt/go-ethereum/tree/eip-3074)

```bash
$ geth init --datadir ~/.ethereum/puxi ./geth/genesis.json
$ cp ./geth/static-nodes.json ~/.ethereum/puxi/geth/
$ geth --datadir ~/.ethereum/puxi --networkid 224525 --nodiscover --ethstats="yournode:puxinet@puxi.quilt.link"
```

## Starting OpenEthereum

[Source](https://github.com/quilt/openethereum/tree/eip-3074)

```bash
$ openethereum --chain puxi
```
