//SPDX-License-Identifier: MIT
pragma solidity ^0.8;

import {MedicalRecords} from "../src/MedicalRecords.sol";
import {Test, console} from "../lib/forge-std/src/Test.sol";

contract MedicalRecordsTest {
    function setUp() public returns (MedicalRecords) {
        MedicalRecords medicalRecords = new MedicalRecords();
        return medicalRecords;
    }

    function testpatientInput() {}
}
