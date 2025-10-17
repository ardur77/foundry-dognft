NFT Projects — BasicNft & MoodNft

This repository contains two simple NFT smart contracts I built while learning Solidity and on-chain metadata.
Both are small experimental projects created as part of my early practice with NFTs.

Overview
1. BasicNft.sol

A straightforward NFT contract that mints a Dog NFT.
It focuses on the fundamentals of ERC-721: minting, ownership, and metadata handling.

Key features:

Standard ERC-721 implementation

Stores metadata URI for each token

Basic minting logic

2. MoodNft.sol

An on-chain SVG NFT that changes its displayed image (mood) between happy and sad.
The images are stored directly on-chain as Base64-encoded SVGs, making the NFT fully self-contained.

Key features:

Dynamic SVG rendering using Base64 encoding

Two mood states: Happy and Sad

On-chain metadata — no external files or IPFS

Function to toggle the mood

Tech Stack:

Solidity

Foundry (for compilation and deployment)

Base64 encoding for SVGs

Notes

This was a trial project, one of my first few Solidity projects.

No major tests have been written yet.

The contracts are not production-ready, they were made to understand how NFTs, metadata, and on-chain SVGs work.

Future Improvements:

Add Foundry tests for both contracts

Integrate a small frontend to visualize MoodNft changes

Extend MoodNft with more moods or traits

Store BasicNft metadata on IPFS or Arweave

License

MIT License

Author

rudr77
Learning Web3 Development and Smart Contract Security# foundry-dognft
