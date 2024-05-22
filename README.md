## Foundry TP for privacy

Les structures et les données de tableau démarrent toujours un nouvel emplacement et occupent des emplacements entiers.
ça ira dans l'emplacement 3 et occupera jusqu'à l'emplacement 6 puisque les octets32 occuperont un emplacement complet de 32 octets.
La \_key sera sur l'emplacement 5.
On cherche donc à la récupérer et à l'utiliser par la suite.

Pour utiliser le script :
forge script ./script/Privacy.s.sol --private-key $PRIVATE_KEY --broadcast --rpc-url $AMOY_RPC_URL

**Foundry is a blazing fast, portable and modular toolkit for Ethereum application development written in Rust.**

Foundry consists of:

- **Forge**: Ethereum testing framework (like Truffle, Hardhat and DappTools).
- **Cast**: Swiss army knife for interacting with EVM smart contracts, sending transactions and getting chain data.
- **Anvil**: Local Ethereum node, akin to Ganache, Hardhat Network.
- **Chisel**: Fast, utilitarian, and verbose solidity REPL.

## Documentation

https://book.getfoundry.sh/

## Usage

### Build

```shell
$ forge build
```

### Test

```shell
$ forge test
```

### Format

```shell
$ forge fmt
```

### Gas Snapshots

```shell
$ forge snapshot
```

### Anvil

```shell
$ anvil
```

### Deploy

```shell
$ forge script script/Counter.s.sol:CounterScript --rpc-url <your_rpc_url> --private-key <your_private_key>
```

### Cast

```shell
$ cast <subcommand>
```

### Help

```shell
$ forge --help
$ anvil --help
$ cast --help
```
