pragma solidity >= 0.7.0 < 0.9.0;

/*

Public - can be called from all functions and from the user
Private - Can only be called from within a contract
External - can only be called from outside the contract not within
Internal - Called only within the smart contract OR other contracts that inherit the smart contract

*/


contract c {

    uint private data = 10; //state variable

    function x () private view returns (uint) {

        uint newData = data + 15;
        return newData;

    }

    function y () public view returns (uint) {

        return data;

    }
}
