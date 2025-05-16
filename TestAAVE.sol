// contracts/MockERC20.sol

// Import the ERC20 contract from OpenZeppelin
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MockERC20 is ERC20, Ownable {
    constructor(address initialOwner) ERC20("Test AAVE", "AAVE") Ownable(initialOwner) {
        // Mint 1,000,000 tokens (with 18 decimals) to the contract deployer for initial testing
        _mint(msg.sender, 1000000 * 10 ** decimals());
    }

    // Allow owner to mint tokens for testing purposes
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}
