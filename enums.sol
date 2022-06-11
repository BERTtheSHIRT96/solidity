pragma solidity >= 0.7.0 < 0.9.0;

// Enums restrict a variable to have one of only a few predefined values.

// By restricting we can reduce bugs and glitches in the code

contract enumsLearn {

    enum frenchFriesSize {LARGE, MEDIUM, SMALL}
    frenchFriesSize choice;
    frenchFriesSize constant defaultChoice = frenchFriesSize.MEDIUM;

    function setSize() public {

        choice = frenchFriesSize.SMALL;

    }

    function getChoice () public view returns (frenchFriesSize) {

        return choice;

    } 

    function getDefault () public view returns (frenchFriesSize) {

        return defaultChoice;

    }

}

contract enumsExercise {

    enum shirtColor {RED, WHITE, BLUE}
    shirtColor constant defaultChoice = shirtColor.BLUE;
    shirtColor choice;

    function changeColor (shirtColor _user) public {

        choice = _user;

    }

    function getColor () public view returns (shirtColor) {

        return choice;

    }

    function getDefaultChoice () public view returns (shirtColor) {

        return defaultChoice;

    }

}