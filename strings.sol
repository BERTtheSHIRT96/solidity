pragma solidity >= 0.7.0 < 0.9.0;

contract learnStrings {

    string sayHello = "Hello";
    string sayGoodbye = 'Goodbye';

    // The MEMORY temporary information storage, lost after execution.

    function hello () public view returns (string memory) {

        return sayHello;

    }

    // The STORAGE long term information storage, and can be added to over multiple executions.

    //function goodbye () public pure returns (string storage) {

        //return sayGoodbye;

    //}


    // Inputting a string needs to be stored in memory
    function changeGreeting (string memory _change) public {

        sayHello = _change;

    }

    // Trying to find the length, doesnt allow this method as it would be too expensive in gas to run transaction
    //function getChar() public view returns (uint) {

        //return sayHello.length;

    //}

    // If we convert strings to bytes we can return the lenght

    function getLength () public view returns (uint) {

        bytes memory stringToBytes = bytes(sayHello);
        return stringToBytes.length;

    }

    // Using a backslash in a string allows it to be skipped, unusual charecter canot be counted in bytes

    // -EXERCISE-

    string favouriteColor = "Blue";

    // 1. Function to fetch stored color
    function getColor () public view returns (string memory) {

        return favouriteColor;

    }

    // 2. Function to change color from user input
    function changeFColor (string memory userColor) public {

        favouriteColor = userColor;

    }

    // 3. Function to count how many charecters in color
    function colorCounter () public view returns (uint) {

        // Quick conversion of colour from string into bytes
        bytes memory convertedColor = bytes(favouriteColor);
        return convertedColor.length;

    }

}