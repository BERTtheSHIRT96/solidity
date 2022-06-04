pragma solidity >= 0.7.0 < 0.9.0;

contract WelcomeToSolidity {
    constructor() public{
    }

    // adds two intergers
    function getResult() public view returns(uint){
        uint a = 10;
        uint b = 5;
        uint result = a + b;
        return result;
    }
}