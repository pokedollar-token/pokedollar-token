// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Pokedollar is ERC20 {
    constructor() ERC20("Pokedollar", "PD") {
      uint256 maxSupply = 42000000000000; // 42 Trillion
      /*
        Initially, mint all tokens to the project wallet.

        The maximum supply for Pokédollar is 42 Trillion.
        Pokédollar has 18 decimals (defined in OpenZeppelin's ERC20 template), 
        meaning the smallest fraction of a Pokédollar you can receive is 0.000000000000000001 Pokédollar.

        This is the only call to the _mint() function ever. Thus, the amount of tokens in circulation will never increase any further.
      */
        _mint(msg.sender, maxSupply * (10 ** uint256(decimals())));
    }
}
