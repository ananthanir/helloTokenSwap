// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract TokenSwap {
    IERC20 public USDT = IERC20(0x5e17b14ADd6c386305A32928F985b29bbA34Eff5);
    IERC20 public EURO = IERC20(0x3328358128832A260C76A4141e19E2A943CD4B6D);

    event Swapped(address indexed user, uint256 amount, string swaps);

    function swapToUSDT(uint256 EURO_amount) external {
        require(EURO_amount > 0, "Token amount should be greater than 0");

        require(EURO.balanceOf(address(this)) >= EURO_amount, "Not enough EURO in the contract");

        require(EURO.transferFrom(msg.sender, address(this), EURO_amount), "EURO transfer failed");

        require(USDT.transfer(msg.sender, EURO_amount), "USDT transfer failed");

        emit Swapped(msg.sender, EURO_amount, "EURO to USDT");
    }

    function swapToEURO(uint256 USDT_amount) external {
        require(USDT_amount > 0, "Token amount should be greater than 0");

        require(USDT.balanceOf(address(this)) >= USDT_amount, "Not enough USDT in the contract");

        require(USDT.transferFrom(msg.sender, address(this), USDT_amount), "EURO transfer failed");

        require(EURO.transfer(msg.sender, USDT_amount), "USDT transfer failed");

        emit Swapped(msg.sender, USDT_amount, "USDT to EURO");
    }

}
