pragma solidity >= 0.7.0 < 0.9.0;

contract learnFunctions {

/*
function function-name(parameter-list) scope returns() {
statements }
*/

uint c = 3;

function remoteControlOpen(bool closedDoor) public returns(bool){
}

function addValues() public view returns(uint){

uint a = 2;
uint b = 3;
uint result = a + b + c;
return result;

}

// **TASK** Create a calculator that multiplies two intergers

function multiplyCalculator(uint a, uint b) public view returns(uint){

uint result = a * b;
return result;

}

}