// SPDX-License-Identifier: MIT
pragma solidity >=0.6.2 <0.9.0;

import "../lib/forge-std/src/Test.sol";
import "../src/Tester.sol";

contract TesterTest is Test {
     
    Tester public tester;

function setUp() public {
    address initialOwner = address(0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2);
    tester = new Tester(initialOwner);
}

function testDeployment() public {
    address owner = address(0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2);
     tester = new Tester(owner);
    assertEq(tester.owner(), owner);
}
    function testTransfer() public {
        address a = address(0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2); 
        tester.transfer(a, 20);
        assertEq(tester.balanceOf(a), 20);
    }

    function testBalanceOf() public {
        assertEq(tester.balanceOf(msg.sender), 0);
    }


}
