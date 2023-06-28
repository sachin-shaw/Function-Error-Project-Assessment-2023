# Require(), Revert() and Assert() statement 

This Solidity program is a simple "errorHandling" program that demonstrates the functionality of Require, Revert and Assert statement.

## Description

The Contract demonstrates Require, Revert and Assert statement. 
Require - In case condition is not met, this method call Revert to original state. This method is used for error in Inputs or external components.
Revert - This method aborts the execution and revert any changes done to the state.
Assert - in case condition is not met, then any changes done to state got reverted. This method is used for internal errors.

## Getting Started
### Executing program
To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., errorHandling.sol). Copy and paste the following code into the file:

```javascript
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


```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.4" (or another compatible version), and then click on the "Compile errorHandling.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "errorHandling" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by calling the testRequire, testRevert and testAssert function. 


## Authors
Sachin kumar

