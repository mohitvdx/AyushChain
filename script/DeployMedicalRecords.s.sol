//SPDX-License-Identifier: MIT

pragma solidity ^0.8;

import {MedicalRecords} from "../src/contracts/MedicalRecords.sol";
import {Script} from "../lib/forge-std/src/Script.sol";

contract DeployMedicalRecords is Script {
    function run() public returns (MedicalRecords) {
        vm.startBroadcast();
        MedicalRecords medicalRecords = new MedicalRecords();
        vm.stopBroadcast();
        return medicalRecords;
    }
}
