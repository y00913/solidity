pragma solidity ^0.6.0;

contract MyContract{
    
    // State Variables
    string public myString = "Hello, World!";
    bytes32 public myBytes32 = "Hello, World!";
    int public MyInt = 1;
    uint public myUnit = 1;
    uint256 public myUnit256 = 1;
    uint8 public myUnit8 = 1;
    //address public myAddress = 0x5838Da6a701c568545dCfcB03FcB875f56beddC4;
    
    //struct
    struct MyStruct{
        uint myInt;
        string myString;
    }
    
    MyStruct public myStruct = MyStruct(1,"Hello, World!");
    
    //Local Variables
    function getValue() public pure returns(uint) {
        uint value = 1;
        return value;
    }
}
