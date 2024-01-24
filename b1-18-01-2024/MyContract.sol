// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract {
    bool public b = true;
    uint public x; // default = 0

    modifier increaseValue(uint y) {
        require(y > 0, "X just must be increased!");
        x += y;
        _;
    }

    function get_b() public view returns (bool) {
        return b;
    }

    function addToX2(uint y) public {
        x += y;
    }

    function increaseX(uint y) public increaseValue(y) {}

    function returnTwo() public pure returns (int c, bool d) {
        c = -2;
        d = true;
    }
}
