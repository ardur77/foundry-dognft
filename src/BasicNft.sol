// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.18;

import {ERC721} from "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract BasicNFT is ERC721 {
    uint256 private s_tokenCounter;
    mapping(uint256 => string) private s_tokenIdtoUri;

    constructor() ERC721("Doggie", "Dog") {
        s_tokenCounter = 0;
    }

    function mintNft(string memory tokenUri) public {
        s_tokenIdtoUri[s_tokenCounter] = tokenUri; //associates uri(metadata) to that tokenID
        _safeMint(msg.sender, s_tokenCounter); //safeMint is the internal function which creates tokens ith id(tC) and assigns ownership to msg.sender
        s_tokenCounter++;
    }

    function tokenURI(uint256 tokenID) public view override returns (string memory) { //returns string for attributes of the nft
    }
}

