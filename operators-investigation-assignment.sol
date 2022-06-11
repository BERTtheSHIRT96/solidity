pragma solidity >= 0.7.0 < 0.9.0;

contract zeroDivisor{

    function remainderFinder (uint x, uint y) public view returns (uint) {

        require (y > 0, "Divisor CANNOT be 0, please try again!");
        uint result;
        result = x % y;
        return result;

    }

}