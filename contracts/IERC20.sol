// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;


interface  IEmaxToken{

    function totalSupply() external view returns (uint);
    function transfer(address recipient, uint amount) external returns (bool);
    function balanceOf(address account) external view returns (uint);
    
    event Transfer(address indexed from, address indexed to, uint value);

}