// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Payment {
    function makePayment(address _recipient, uint256 _amount) external payable {
        payable(_recipient).transfer(_amount);
    }
}
