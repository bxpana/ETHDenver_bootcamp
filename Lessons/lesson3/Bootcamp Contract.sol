// SPDX-License-Identifier: None

pragma solidity 0.8.17;


contract BootcampContract {

    address owner;

    constructor() {
        owner = msg.sender;
    }

    function getDeployer() public view returns (address) {
            if (msg.sender == owner) {
                return 0x000000000000000000000000000000000000dEaD;
            } else {
                return owner;
            }
    }
}
