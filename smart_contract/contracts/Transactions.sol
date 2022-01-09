//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract Transactions {
    uint256 transactionCounter;

    event Transfer(address from, address receiver, uint amount, string message, uint256 timestamp, string keyword);

    struct TransferStruct {
        address sender;
        address receiver;
        uint amount;
        uint256 timstamp;
        string message;
        string keyword;
    }

    TransferStruct[] transactions;

    function addToBlockChain( address payable receiver, uint amount, string memory message, string memory keyword ) public {
        transactionCounter += 1;
        transactions.push(TransferStruct(msg.sender, receiver, amount, message, block.timestamp, keyword));
    }

    function getAllTransaction() public view returns (TransferStruct[] memory) {
        // return transactions;
    }

    function getTransactionCOunt() public view returns (uint256) {
        // return transactionCount;
    }
}