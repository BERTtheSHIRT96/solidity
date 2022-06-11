pragma solidity >=0.7.0 < 0.9.0;

// uint data type is an unsigned interger, meaning its value cannot be negative
// there is also the int data type of signed intergers

// By default uint is 256 bits, however you can declaire 8, 16, 32 etc.
// This would be used in specific cases to minimise gas usage.

contract learnConversions {

    // Converting to smaller type costs higher order bits
    uint32 a = 0x12345678;
    uint16 b = uint16(a); // b = 0x5678

    // COnversion to higher type adds padding bits to the left
    uint16 c = 0x1234;
    uint32 d = uint32(c); // c = 0x00001234

    // What is the cost?
    bytes2 e = 0x1234;
    bytes1 f = bytes1(e); // f = 0x12

    // What does it add?
    bytes2 g = 0x1234;
    bytes4 h = bytes4(g); // h = 0x12340000

}