// contracts/MockUniswapRouter.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract IUniswapV2Router02 {
    function swapExactETHForTokens(
        uint amountOutMin,
        address[] calldata path,
        address to,
        uint deadline
    ) external payable returns (uint[] memory amounts) {
        // Mock behavior: return a fixed amount of tokens
        uint[] memory amountsOut = new uint[](2);
        amountsOut[0] = msg.value; // Mock input amount
        amountsOut[1] = amountOutMin; // Mock output amount
        return amountsOut;
    }
}