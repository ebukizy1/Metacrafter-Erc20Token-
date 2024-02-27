
EmaxToken
Overview
EmaxToken is a simple ERC-20 token smart contract written in Solidity. It provides basic functionalities for creating, managing, and transferring tokens on the Ethereum blockchain.

Features
Token Details

Name: EmaxToken
Symbol: EMT
Decimals: 18
Owner Management

The contract is initialized with an owner, and certain functions can only be executed by the owner.
Total Supply

The total supply of the token is set during the minting process.
Balance Tracking

The contract keeps track of the token balances for each address.
Transfer Functionality

The transfer function allows token holders to send tokens to other addresses.
Minting

New tokens can be minted by the owner of the contract.
Burning

Token holders can burn their own tokens, reducing the total supply.
Functions
totalSupply

Returns the total supply of EmaxToken.
balanceOf

Takes an address as an argument and returns the token balance of that address.
transfer

Allows token holders to transfer tokens to another address.
mint

Mint new tokens. Only the owner can execute this function.
burn

Burn a specified amount of tokens. The caller must have a sufficient balance.
Errors
NOT_OWNER_ERROR

Thrown when a non-owner attempts to execute a function restricted to the owner.
INSUFFICIENT_AMOUNT_ERROR

Thrown when a user attempts to burn more tokens than they own.
ADDRESS_ZERO_ERROR

Placeholder error; not explicitly used in the current implementation.
Usage
To use this contract, deploy it to the Ethereum blockchain, providing the desired name and symbol during deployment. After deployment, the owner can mint tokens and manage the token supply.