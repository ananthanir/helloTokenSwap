// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract USDT is ERC20 {
    constructor(uint256 amount) ERC20("USDTether", "USDT") {
        _mint(msg.sender, amount);
    }

    function mint(address to, uint256 amount) public {
        _mint(to, amount);
    }

    function approveSwap(uint amount, address swapcontract) public {
        _approve(msg.sender, swapcontract, amount);
    }
}
