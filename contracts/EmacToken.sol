// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "./IERC20.sol";


contract EmaxToken is IEmaxToken {

    string public name;
    string public  symbol;
    uint public decimal;
    address public owner;
    uint public _totalSupply;

    mapping (address => uint) private savings;

    error NOT_OWNER_ERROR();
    error INSUFFICIENT_AMOUNT_ERROR();
    error ADDRESS_ZERO_ERROR();


    constructor(string memory _name, string memory _symbol){
        owner = msg.sender;
        name = _name;
        symbol = _symbol;
        decimal = 18;


    }


    function totalSupply() external view returns (uint){
        return _totalSupply;
    }


    function balanceOf(address addr) external view returns (uint){
        return savings[addr];
    }

    function onlyOwner() private view returns(bool){
        return  msg.sender == owner;
    }

    function calculateDecimals() private view returns (uint){
        return 10 ** decimal;
    }

    function transfer(address to, uint amount) external returns (bool){
  
        savings[msg.sender] = savings[msg.sender] - (amount * calculateDecimals());
        savings[to] = savings[to] + (amount * calculateDecimals());
        return true;
    }

    function mint(uint amount) external {
        bool isOwner = onlyOwner();
        if (isOwner){
            _totalSupply = amount * calculateDecimals();
            savings[owner] = savings[owner] + (amount * calculateDecimals());
        }
        else revert NOT_OWNER_ERROR();  
    }

    function burn(uint amount) external {
        if (savings[msg.sender] < amount) revert INSUFFICIENT_AMOUNT_ERROR();
        savings[msg.sender] = savings[msg.sender] - (amount * calculateDecimals());
        _totalSupply = _totalSupply - (amount * calculateDecimals());
    }

}