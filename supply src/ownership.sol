// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./Roles.sol";

contract Ownership is Roles {
    modifier onlyManufacturer() {
        require(manufacturers[msg.sender], "Only manufacturers can perform this action");
        _;
    }

    modifier onlyDistributor() {
        require(distributors[msg.sender], "Only distributors can perform this action");
        _;
    }

    modifier onlyRetailer() {
        require(retailers[msg.sender], "Only retailers can perform this action");
        _;
    }
}
