// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract HashStorage {
    mapping(string => bool) private hashExists;

    // Function to store hash
    function storeHash(string memory hash) public {
        require(!hashExists[hash], "Hash already stored.");
        hashExists[hash] = true;
    }

    // Function to verify hash
    function verifyHash(string memory hash) public view returns (bool) {
        return hashExists[hash];
    }
}
