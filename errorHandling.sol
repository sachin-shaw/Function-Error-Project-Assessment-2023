// SPDX-License-Identifier: MIT
pragma solidity  ^0.8.7;

contract errorHandlingTest{
    address public owner;
    uint public count = 0;

    constructor(){
        owner = msg.sender;
    }

    //Require - In case condition is not met, this method call Revert to original state.
    //This method is used for error in Inputs or external components.
    
    function testRequire() public {
        require(msg.sender == owner , "caller is not owner");
        count++;
    }

    //Revert - This method aborts the execution and revert any changes done to the state.

    function testRevert() public{
        if(msg.sender != owner){
            revert("caller is not owner");
        }
        else {
            testRequire();
        }
    }

    // Assert - in case condition is not met, then any changes done to state got reverted.
    //This method is used for internal errors.

    function testAssert() public {
        assert(msg.sender == owner);
        testRequire();
    }
}
