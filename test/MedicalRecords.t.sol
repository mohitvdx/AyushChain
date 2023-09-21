//SPDX-License-Identifier: MIT
pragma solidity ^0.8;

import {MedicalRecords} from "../src/contracts/MedicalRecords.sol";
import {Test, console} from "../lib/forge-std/src/Test.sol";

contract MedicalRecordsTest is Test, MedicalRecords {
    function setUp() public returns (MedicalRecords) {
        MedicalRecords medicalRecords = new MedicalRecords();
        return medicalRecords;
    }

    string patientName1 = "John Doe";
    uint256 patientAge1 = 25;

    function testpatientInput() external {
         patientInput(patientName1, patientAge1);
         assertEq(patientInfo[msg.sender].name, patientName1);
            assertEq(patientInfo[msg.sender].age, patientAge1);
    }
}
