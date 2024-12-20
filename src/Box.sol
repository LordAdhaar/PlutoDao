// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

contract Box is Ownable {
    uint256 private s_number;

    event Box__numberChanged(uint256 number);

    constructor() Ownable(msg.sender) {}

    function store(uint256 newNumber) public onlyOwner {
        s_number = newNumber;
        emit Box__numberChanged(newNumber);
    }

    function getNumber() public view returns (uint256) {
        return s_number;
    }
}
