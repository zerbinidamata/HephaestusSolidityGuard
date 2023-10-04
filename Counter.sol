pragma solidity ^0.5.11;


contract Counter {
    // Create a variable to store our count, set it to public to have the compiler create a getter. Will initiall be set to 0
    uint public count;
    // Constructor does not live on chain, can only be called once on deploy
    constructor(uint _count) public {
        count = _count;
    }
    
    function increment() external {
        count++;
    }
    
    function decrement() external {
        count--;
    }
}