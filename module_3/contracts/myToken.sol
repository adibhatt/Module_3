//SPDX-License-Identifier: MIT

// Solidity files have to start with this pragma.
// It will be used by the Solidity compiler to validate its version.
pragma solidity ^0.8.18;


import "hardhat/console.sol";


contract myToken {
    
    string public name = "ADI TOKEN";
    string public symbol = "ADI";
    uint256 public totalSupply = 500;
    address public owner;

    mapping(address => uint256) balances;

    event mintToken(address indexed to, uint256 value);
    event burnToken(address indexed from, uint256 value);
    event Transfer(address indexed _sender, address indexed receiver, uint256 _value);

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can call this function.");
        _;
    }

    constructor() {
        balances[msg.sender] = totalSupply;
        owner = msg.sender;
    }

    function tokenBalance(address account) external view returns (uint) {
        return balances[account];
    }

    function mint(address to , uint value) public onlyOwner{
        balances[to] += value;

        emit mintToken(to, value);
    }

    function burn(uint value) public {
        require(balances[msg.sender] >= value , "You do not have enough tokens");

        balances[msg.sender] -= value;
        
        emit burnToken(msg.sender, value);
    }
    
    function transfer(address receiver, uint value) external {

        require(balances[msg.sender] >= value, "You do not have enough tokens");

        balances[msg.sender] -= value;
        balances[receiver] += value;

        emit Transfer(msg.sender, receiver, value);
    }
}