//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract Token {
    string public name = "Daval Gregory Token";
    string public symbol = "DGT";
    uint public totalSupply = 1000000;
    mapping(address => uint) balances; // can be think of a object in JS or a mapping feature in another language
 
    constructor() {
      balances[msg.sender] = totalSupply;
    }

function transfer(address to, uint amount) external {
    require(balances[msg.sender] >= amount, "Not enough tokens"); // A check done , and if not passed , it does not continue on
    balances[msg.sender] -= amount;
    balances[to] += amount;
  }

  function balanceOf(address account) external view returns (uint) {
    return balances[account];
  }
}