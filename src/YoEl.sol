// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

contract YoEl is ERC721URIStorage {

    uint256 public constant MAX_SUPPLY = 10000;
    uint256 private _currentTokenId = 0;

    constructor() ERC721("YoEl Coin", "ERC721") {
        _mint(msg.sender, 1);
    }

    function mint(address to) public payable {
        require(msg.value >= 0.01 ether, "YoEl: not enough ETH");
        require(_currentTokenId < MAX_SUPPLY, "YoEl: max supply reached");

        _mint(to, _currentTokenId);
        _currentTokenId++;
    }

    function setUrl(uint256 tokenId, string memory _tokenURI) public {
        _setTokenURI(tokenId, _tokenURI);
    }
}