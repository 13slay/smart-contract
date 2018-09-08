pragma solidity ^0.4.23;

import "./token/StandardToken.sol";

contract Token is StandardToken {
	
	string public name;
	string public symbol; 
	uint8 public decimals; 

  	constructor (string _name, string _symbol, uint8 _decimals, uint256 _total) public {
		name = _name;
		symbol = _symbol;
		decimals = _decimals;
		totalSupply_ = _total.mul(10 ** uint256(_decimals));
	
    	balances[msg.sender] = totalSupply_;
	
    	emit Transfer(address(0), msg.sender, totalSupply_);
  	}
  	
}