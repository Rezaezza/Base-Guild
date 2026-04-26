// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

contract BAS7 {
    string public name = "GEFORCE";
    string public symbol = "GRC";
    uint256 public totalSupply = 1_000_000;
    string public standard = "ERC20";

    function mint(address to, uint256 amount) public {
        // Add ownership logic here (e.g., `onlyOwner` modifier)
        // _mint(to, amount); // Requires ERC20 implementation
    }
}
