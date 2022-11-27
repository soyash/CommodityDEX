// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract RiceToken is ERC20, Ownable {
    // owner will be deployer
    constructor() ERC20("RiceToken", "RICE") {}

    function mint(address to, uint256 amount) public payable onlyOwner {
        _mint(to, amount);
    }
}