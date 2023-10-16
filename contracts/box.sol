// contracts/Box.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/access/Ownable.sol";

contract Blm is Ownable {
  uint256 private value;

  // Emitted when the stored value changes
  event ValueChanged(char newValue);

  // Stores a new value in the contract
  function store(char newValue) public onlyOwner {
    value = newValue;
    emit ValueChanged(newValue);
  }

  // Reads the last stored value
  function retrieve() public view returns (char) {
    return value;
  
  }
}