## Foundry

# 📌 Dirección del contrato desplegado
- **MiPrimerToken**: [`0xa4ed66f2e81722708a701aa6a704993910973b3`]
**Etherscan:** https://sepolia.etherscan.io/address/0xa4ed66f2e81722708a701aa6a704993910973b3

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
---
---

# 📌 Información del Proyecto

## 👩‍💻 Autora
**Niurka Oropeza**  
Estudiante de Maestría. Mención Desarrollo de Software - UPTA, Aragua, Venezuela.

## 🚀 Contrato Desplegado
- **Token:** MiPrimerToken (MPT)
- **Dirección:** `0xa4ed66f2e81722708a701aa6a704993910973b3`
- **Etherscan:** https://sepolia.etherscan.io/address/0xa4ed66f2e81722708a701aa6a704993910973b3
- **Red:** Sepolia Testnet
- **Estado:** ✅ Verificado

## 📊 Características del Token
- Suministro Inicial: 1,000,000 MPT
- Decimales: 18
- Función mint: Solo disponible para el owner
- Estándar: ERC-20

## 🧪 Tests
- ✅ 9 tests pasados exitosamente
- ✅ Incluye fuzzing testing
- ✅ Cobertura completa de funcionalidades

---

*Proyecto Académico - 17 de Diciembre de 2025*