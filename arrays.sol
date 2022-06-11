pragma solidity >= 0.7.0 < 0.9.0;

// An array is a data structure, which stores a fixed-size sequential collection of elements of the same type.

contract learnArrays {

    uint[] public myArray;
    uint[] public myArray2;
    uint[50] public myFixedSizeArray;

    //PUSH method add one or more elements to the END of an array and returns the new length.

    function numberPush(uint number) public {

        myArray.push(number);

    }

    //POP method removes the LAST element from an array and returns that value to the caller.

    function numberPop() public {

        myArray.pop();
    
    }

    //LENGTH is a string property that is used to determine the length of string or data set.

    function numberLength() public view returns (uint) {

        return myArray.length;

    }

    //DELETE method can remove a selected item in an array

    function numberRemove(uint removeAmount) public {

        delete myArray[removeAmount];
        // WHen deleting it sets the value to 0, it doesnt remove the item from the array

    }

}
    //-EXERCISE-
contract arrayExercise {

    uint[] public changeArray;

    // Quick fuction to add values into the array which loops to the value given by user, adding 1 to that value each time.
    function arrayTester (uint _tester) public {

        uint counter = 1;

        for (uint i; i < _tester; i++) {
            changeArray.push(counter);
            counter++;
        }

    }

    function getLengthTest () public view returns (uint){

        return changeArray.length;

    }

    function removeElement (uint _input) public {

        uint valueStore;
        uint deletedValue;
        valueStore = changeArray[changeArray.length -1];
        deletedValue = changeArray[_input];
        changeArray[_input] = valueStore;
        changeArray.pop();

    }

}

