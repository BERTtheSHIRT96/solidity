pragma solidity >= 0.7.0 < 0.9.0;

// Mapping is a reference type such as array and structs. 
// Create a library that has assigned keys and values.
// With a map you cannot itterate or retrieve the length of the map.

contract learnMapping {

    // mapping (type of data being used (Can be anything) => uint for the key) visibility Name;

    mapping (address => uint) public myMap;

    function setAddress (address _addr, uint _i) public {

        myMap[_addr] = _i;

    }

    function getAddress (address _addr) public view returns (uint) {

        return myMap[_addr];

    }

    function removeAddress (address _addr) public {

        delete myMap[_addr];

    }

}

contract mappingExercise {

    struct movie {
        string Title;
        string Director;
    }

    mapping (uint => movie) movieStorage;

    function addMovie (uint _id, string memory _title, string memory _director) public {
        movieStorage[_id] = movie(_title, _director);
    }

}

contract musicLibrary{

    struct song {
        string Title;
        string Genre;
        string Artist;
        uint Duration;
    }

    mapping (uint => song) songStorage;

    function addSong (uint _id, string memory _title, string memory _genre, string memory _artist, uint _duration) public {

        songStorage[_id] = song(_title, _genre, _artist, _duration);

    }

}

contract nestedMapping {

// NESTED Mapping (or maps within maps)
// What if you wanted to store movies that belong to a certain person, thing or address
// example: mapping(key => mapping(key2 => value)) nestedMap

    struct song {
        string Title;
        string Genre;
        string Artist;
        uint Duration;
    }

    mapping (address => mapping(uint => song)) public mySong;

    function addMySong (uint _id, string memory _title, string memory _genre, string memory _artist, uint _duration) public {

        // msg.sender is a global variable that capturs the addy of the user calling contract

        mySong[msg.sender][_id] = song(_title, _genre, _artist, _duration);

    }

}