// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

contract TinderERC721 is ERC721URIStorage {
    uint256 TINDER_TOKEN_ID;

    constructor() ERC721("WebNFT", "WN") {}

    function mintNFT(
        address _userOne,
        address _userTwo,
        string memory tokenURI
    ) public {
        _mint(_userOne, TINDER_TOKEN_ID);
        _setTokenURI(TINDER_TOKEN_ID, tokenURI);
        TINDER_TOKEN_ID++;

        _mint(_userTwo, TINDER_TOKEN_ID);
        _setTokenURI(TINDER_TOKEN_ID, tokenURI);
        TINDER_TOKEN_ID++;
    }
}

// TINDER CONTRACT ADDRESS: 0x96345C9b3AB529d40127d56D35B5216F365c9297
