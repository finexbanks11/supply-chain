// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./Product.sol";

contract Shipment {
    mapping(uint256 => address) public shipments;

    function createShipment(uint256 _productId, address _destination) external {
        require(Product(msg.sender).ownerOf(_productId) == msg.sender, "Only product owner can create shipment");
        shipments[_productId] = _destination;
    }
}
