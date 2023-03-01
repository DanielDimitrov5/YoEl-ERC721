// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/Counter.sol";
import "forge-std/console.sol";

contract CounterTest is Test {
    Counter public counter;

    function setUp() public {
        counter = new Counter();
        counter.setNumber(0);
    }

    function testIncrement() public {
        counter.increment();
        assertEq(counter.number(), 21);
    }

    function testSetNumber(uint8 x) public {
        console.log("x: %s", uint8(x));
        counter.setNumber(x);
        assertEq(counter.number(), x + uint256(20));
    }
}
