// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./Product.sol";

contract Order {
    struct OrderItem {
        uint256 productId;
        uint256 quantity;
    }

    mapping(uint256 => OrderItem[]) public orders;

    function createOrder(uint256[] memory _productIds, uint256[] memory _quantities) external {
        require(_productIds.length == _quantities.length, "Invalid input");
        uint256 orderId = orders.length;
        for (uint256 i = 0; i < _productIds.length; i++) {
            orders[orderId].push(OrderItem(_productIds[i], _quantities[i]));
        }
    }
}
