// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract Score {

    uint public score;

    address public owner;

    mapping(address => uint) score_list;

    uint[] all_possible_number;
    uint[9] one_digit_number;

    struct Funder {
        address addr;
        uint amount;
    }

    Funder giver;

    modifier onlyOwner {
        if (msg.sender == owner) {
            _;
        }
    }

    event Score_set(uint indexed);


    constructor() {
        owner = msg.sender;
    }

    function setScore(uint new_score) public onlyOwner {
        score = new_score;
        emit Score_set(new_score);
    }

    function getUserScore(address user) public view returns (uint) {
        return score_list[user];
    }
}
