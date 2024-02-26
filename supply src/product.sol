// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Product {
    struct Item {
        uint256 id;
        string name;
        uint256 quantity;
        address owner;
    }

    mapping(uint256 => Item) public items;
    uint256 public itemCount;

    function createProduct(string memory _name, uint256 _quantity) external {
        itemCount++;
        items[itemCount] = Item(itemCount, _name, _quantity, msg.sender);
    }

    function transferOwnership(uint256 _productId, address _newOwner) external {
        require(items[_productId].owner == msg.sender, "Only owner can transfer ownership");
        items[_productId].owner = _newOwner;
    }
}
