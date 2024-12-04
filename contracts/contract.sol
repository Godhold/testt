// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
 * @title CarbonCredits
 * @dev Smart contract for issuing, transferring, retiring, and purchasing carbon credits.
    @custom:dev-run-script scripts/deploy_with_ethers.ts
 */
contract CarbonCredits {
    struct Credit {
        uint256 id;             // Unique identifier for the credit
        address owner;          // Current owner of the credit
        uint256 amount;         // Amount of carbon offset (in metric tons)
        bool isRetired;         // Whether the credit is retired
        uint256 price;          // Sale price in wei (0 if not for sale)
        bytes32 metadataHash;   // Hash of the off-chain metadata (IPFS CID hash)
    }
