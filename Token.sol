// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {

    string public name = "First Token";
    string public abbrev  = "ft";
    uint public totalSupply = 0;
    mapping(address => uint) public balances;

    function mint(address add, uint val) public {
        totalSupply += val;
        balances[add] += val;
    }

    function burn(address add, uint val) public {
        if(balances[add] > 0 && (balances[add]-val) >= 0)  {
            balances[add] -= val;
            totalSupply -=val;
        }
    }

}
