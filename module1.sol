// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract myContract {
    uint256 public mymoney ;

    function setmymoney(uint256 newmoney) public {
        // Using require() to validate a condition
        //if this condition true the 
        require(newmoney > 100, "Value must be greater than 100");

        // Using assert() to ensure an internal condition
        //and to check the invariants
        assert(newmoney < 1000);

        // Setting the value
        if(newmoney == 250){
            // Using revert() to revert the transaction
        revert("This operation is not allowed"); 
        }
        mymoney = newmoney;
        
        
    }

    
}
