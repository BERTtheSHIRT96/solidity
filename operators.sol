pragma solidity >= 0.7.0 < 0.9.0;

//      -OPERATORS-

//Arithmetic operators: + / * 

//Comparison operators: ==

//Operands: Variables

//Operators: Signs

contract operators{

    function calculator() public pure returns (uint) {

        uint a = 10;
        uint b = 8;
        uint result;
        result = a % b;
        return result;

    }

// % remainder (how many times can this go into this, and the result is the remainder)
//++ -- plus/minus 1

//Arithmetic exercise

// 1. 4
// 2. 287
// 3. 28
// 4. 3

}

//== - equal too
//!= - not equal too

contract comparisonOperators{

    uint a = 4;
    uint b = 6;

    function compare() public view {

        require (a != b, "That is false");        

    }

    function compareHigherLower (uint x, uint y) public view {

        require (x <= y, "This comparison is false");

    }

}
    //-LOGICAL OPERATORS-

    // && (Logical AND) Both conditions must be met 
    // || (Logical OR) Either condition must be met
    // !(Logical NOT) 

    //-BITWISE OPERATORS-

    //& (Bitwise AND) | (Bitwise OR) ^ (Bitwise XOR)

contract logicalOperators{

    uint a = 4;
    uint b = 5;

    function logic() public view returns(uint){

        uint result = 0;

        if (a < b || a == 5){

            result = a + b;

        }

        return result;

    }

    function logicalExercise () public view returns(uint){

        uint x = 17;
        uint y = 32;
        uint z;
        uint result;

        if(b > a && a != b){

            z = x * y;
            result = z / y;
            return result;

        }

    }

    function assign () public view returns (uint){

        uint c = 2;

        //return c + c + b;
        //return c = c + c + b;
        return c += c + b; //x += y is a short handed way of writing x + x + y (Works for multiplication and division


    }

}  

contract finalExercise{

uint a = 300;
uint b = 12;
uint f = 47;

function finalise () public view returns (uint) {

    uint d = 23;

    if (a >= b && a < f){

        return (d *= d) - b;

    } else {

        return d;

    }

}

}


//Practice contract with a basic minting process e.g.
//Takes user input on amount they want to mint, takes cost of 10 from wallet, adds amount to nftWallet and takes amount from total left
contract myPractice{

    uint public nftWallet = 0;
    uint public wallet = 100;
    uint public mintCount = 12;
    uint cost = 20;

    function mintIt (uint mintAmount) public {

        require (wallet >= cost && mintCount >= 1, "Failed to mint!");

        wallet = wallet - (mintAmount * cost);
        nftWallet = nftWallet + mintAmount;
        mintCount = mintCount - mintAmount;

    }
}