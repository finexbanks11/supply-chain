// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./Product.sol";
import "./Order.sol";
import "./Shipment.sol";

contract SupplyChain {
    Product public productContract;
    Order public orderContract;
    Shipment public shipmentContract;

    constructor() {
        productContract = new Product();
        orderContract = new Order();
        shipmentContract = new Shipment();
    }
}
