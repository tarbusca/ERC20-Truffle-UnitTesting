pragma solidity 0.8.6;
//SPDX-License-Identifier: UNLICENSED

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/TariqToken3B.sol";

contract TestTariqToken3B {

    address owner1 = msg.sender;
    address buyer1 = 0x218e85dD4B2aa105cC8e3e88Bb1e9d780c0c032C;
    uint256 tokenCap1 = 2000000*(10**18);

    TariqToken3B meta = TariqToken3B(DeployedAddresses.TariqToken3B());

    function testcap() public {

        Assert.equal(meta.cap(), tokenCap1, "The token Cap is not 2000000");
    }

    // function testcontractEthers() public {
        
    //     Assert.equal(meta.contractEthers(), 0, "The contract balance is not zero");        
    // }
}