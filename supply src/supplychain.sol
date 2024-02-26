// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./SupplyChain.sol";
import "./Ownership.sol";
import "./Payment.sol";

contract SupplyChainManagement is SupplyChain, Ownership, Payment {}
