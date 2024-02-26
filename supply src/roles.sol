// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Roles {
    address public admin;
    mapping(address => bool) public manufacturers;
    mapping(address => bool) public distributors;
    mapping(address => bool) public retailers;

    constructor() {
        admin = msg.sender;
    }

    modifier onlyAdmin() {
        require(msg.sender == admin, "Only admin can perform this action");
        _;
    }

    function addManufacturer(address _manufacturer) external onlyAdmin {
        manufacturers[_manufacturer] = true;
    }

    // Similar functions for distributors and retailers
}
