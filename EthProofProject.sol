// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {
    // Public variables to store the details about the coin
    string public tokenName = "MyToken";
    string public tokenAbbrv = "MTK";
    uint256 public totalSupply;

    // Mapping to store balances of addresses
    mapping(address => uint256) public balances;

    // Mint function to increase total supply and the balance of the sender
    function mint(address _to, uint256 _value) public {
        totalSupply += _value;
        balances[_to] += _value;
    }

    // Burn function to decrease total supply and the balance of the sender
    function burn(address _from, uint256 _value) public {
        require(balances[_from] >= _value, ">>> Insufficient balance to BURN! <<<");
        totalSupply -= _value;
        balances[_from] -= _value;
    }
}
