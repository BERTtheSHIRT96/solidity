pragma solidity >= 0.7.0 < 0.9.0;

// A contract can only have one constructor

// After the constructor code has been executed, the final code is deployed to the blockain
// this code includes public functions and code reachable through public functions

// A constructor can be either public or internal

// An internal constructor marks the contract as abstract

contract member {

    string name;
    uint age;

    constructor (string memory _name, uint _age) public {

        name = _name;
        age = _age;

    }

}

//This is an option to call the contructor on another contract 
contract teacher is member ("Tom", 28) {

    function getName () public view returns (string memory) {

        return name;

    }

}

contract subTeacher is member {

    constructor (string memory n, uint a) member (n, a) public {}

    function getName () public view returns (string memory) {

        return name;

    }

    function getAge () public view returns (uint) {

        return age;

    }

}

// -EXERCISE-

contract base {

    uint public dataStore;

    constructor (uint data) public {

        dataStore = data;

    }

}

contract derivedBase is base {

    constructor () base (data2) {}
        uint data2 = 5;
}