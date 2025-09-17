// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyFirstContract {
    // State variables
    string public message;
    address public owner;
    
    // Constructor
    constructor(string memory _message) {
        message = _message;
        owner = msg.sender;
    }
    
    // Function to update message
    function updateMessage(string memory _newMessage) public {
        require(msg.sender == owner, "Only owner can update");
        message = _newMessage;
    }
}