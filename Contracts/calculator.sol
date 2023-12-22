// SPDX-License-Identifier: MIT

pragma solidity ^0.8.22;

contract calculator {
    uint256 result;

    function add( uint256 num ) public {
        result += num;
    }

    function subtract( uint256 num ) public {
        result -= num;
    }

    function multiply( uint256 num ) public {
        result *= num;
    }

    function divide( uint256 num ) public {
        result /= num;
    }

    function get() public view returns (uint256) {
        return result;
    }

}