//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract DGToken is ERC20 {
    constructor() ERC20("Daval Gregory Token", "DGT") {
        _mint(msg.sender, 100000 * (10 ** 18));
    }
}