pragma solidity ^0.8.0;

contract allowanceAssignment {

    // A struct too pair 2 addresses together
    struct addyPairing {
        address addyOwner;
        address addySpender;
    }

    // A nested map allowing us to index those pairs
    mapping (uint => addyPairing) public allowance;

    // addAddresses allows us to take the users address and give them the functionality to pair theirs with a spender
    function addAddresses(uint _i, address _addySpender) public {

        allowance[_i] = addyPairing(msg.sender, _addySpender);

    }

    function getSpender (uint _i) public view returns (address) {
        return storage allowance[_i];
    }

}