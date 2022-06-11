pragma solidity >= 0.7.0 < 0.9.0;

//Loops allow yout to iterate through data and take functional action depending on the data.

contract loopContract {

    // List of numbers from 1-10
    uint [] public numbersList = [1,2,3,4,5,6,7,8,9,10];

    function checkMultiplesLoop(uint _number) public view returns (uint) {

        // 3 Part statement(1;2;3;)
        // 1. Inititalise start of loop
        // 2. Determine length of loop
        // 3. To direct index after each turn

        uint count = 0;

        for (uint i = 1; i < numbersList.length; i++) {

            // Logic for Loop

            if (checkMultiples(numbersList[i], _number)) {

                count++;

            }

        }

        return count;

    }

    // Function that can check if two numbers are divisible by eachother

    function checkMultiples (uint _num, uint _nums) public view returns (bool) {

        if (_num % _nums == 0) {

            return true;

        } else {

            return false;

        }

    }

}

contract myLoopingPracticeContract {

    uint [] longList = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30];
    uint [] numbers = [1,4,34,56];

    function userLoop (uint userNumber) public view returns (bool) {

        for (uint i; i < numbers.length; i++) {

            if (userNumber == numbers[i]) {

                return true;

            }

        }

    }

    function evenNumbersLoop () public view returns (uint) {

        uint evensCount = 0;

        for (uint i; i < longList.length; i++) {

            if ((longList[i] % 2) == 0) {

                evensCount++;

            }

        }

        return evensCount;

    }

}