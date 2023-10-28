# Hello Token Swap

This repository contains Solidity-based smart contracts for EVM-compatible networks such as Ethereum. These smart contracts illustrate the swapping of two ERC20 token contracts.  

For instance, USDT to EURO.

## Execution Flow
1. First deploy the EURO.sol & USDT.sol contract with 1000 tokens to be minted at initialization.
2. Copy address of both contracts and replace the following variables insdie the TokenSwap.sol contract
https://github.com/ananthanir/helloTokenSwap/blob/56e066e3999f9398100e06020b5b578e655f9d78/TokenSwap.sol#L7
https://github.com/ananthanir/helloTokenSwap/blob/56e066e3999f9398100e06020b5b578e655f9d78/TokenSwap.sol#L8
3. Next deploy the TokenSwap contract.
4. Call the mint function in both EURO & USDT contract, by passing the TokenSwap contract adress and 1000 mint count.
5. The token swap has two steps that needs to do for tokens to be swapped. Let see in the case of **USDT to EURO**
    1.  First call the approveSwap in the USDT contract by passing TokenSwap contract adress and 10 tokens for swap.
    2.  Then call the swapToEURO in the TokenSwap contract and by passing in the required amount of swap we approved previously which is 10 tokens.
6. In case of **EURO to USDT**
    1.  First call the approveSwap in the EURO contract by passing TokenSwap contract adress and 10 tokens for swap.
    2.  Then call the swapToUSDT in the TokenSwap contract and by passing in the required amount of swap we approved previously which is 10 tokens.
