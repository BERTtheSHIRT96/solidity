pragma solidity >= 0.7.0 < 0.9.0;

// Structs are types that are used to represent a record. FOr example storing information on movies
// You have the title, genre, run length, rating etc

contract leartStructs {

    struct movie {
        string title;
        uint length;
        string director;
        uint movieId;
    }

    movie movieTest;
    movie comedyMovie;

    function setMovie () public {

        movieTest = movie("Gladiator", 129, "Ridley Scott", 1);
        comedyMovie = movie("Pineapple Express", 190, "David Gordon Green", 2);


    }

    function getMovieId () public view returns (uint) {

        return movieTest.movieId;

    }

    function getComedyId () public view returns (uint) {

        return comedyMovie.movieId;

    }

}
