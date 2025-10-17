// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.18;

import {Test} from "forge-std/Test.sol";
import {BasicNFT} from "../src/BasicNft.sol";
import {DeployBasicNft} from "../script/DeployBasicNft.s.sol";

contract BasicNftTest is Test {
    DeployBasicNft public deployer;
    BasicNFT public basicNFT;
    address public USER = makeAddr("user");
    string public constant PUG =
        "ipfs://bafybeig37ioir76s7mg5oobetncojcm3c3hxasyd4rvid4jqhy4gkaheg4/?filename=0-PUG.json";

    function setUp() public {
        deployer = new DeployBasicNft();
        basicNFT = deployer.run();
    }

    function testNameIsCorrect() public {
        assert(keccak256(bytes(basicNFT.name())) == keccak256(bytes("Doggie")));
    }

    /* function testNameIsCorrect() public {
     if this fails, Foundry prints expected vs actual
     assertEq(basicNFT.name(), "Doggie");
     }*/

    // function testCanMintAndHaveABalance() public {
    //     vm.prank(USER); //next tx will be sent by USER
    //     basicNFT.mintNft(PUG);
    //     assert(basicNFT.balanceOf(USER) == 1);
    //     assert(keccak256(abi.encodePacked(PUG)) == keccak256(abi.encodePacked(basicNFT.tokenURI(0))));
    // }
}
