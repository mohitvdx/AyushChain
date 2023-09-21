//SPDX-License-Identifier: MIT
pragma solidity ^0.8;

contract MedicalRecords {
    struct patient {
        string name;
        uint256 age;
        address id;
        string disease;
        uint256 confidence;
        string treatment;
        address consultant;      
    }

    patient[] public AllPatients;
    mapping (address => patient) patientInfo;

    uint256 PatientCount = 0;
    //features //settter functions
    // 1.   name
    //age    
    //id       .  patientInput
    // 2.   disease
    //    confidence        .. modelResult
    // 3.     treatment     // .   prescription
    //      nearest consultant

    function patientInput(string memory _name, uint256 _age) public {
        AllPatients[PatientCount].name = _name;
        AllPatients[PatientCount].age = _age;
        AllPatients[PatientCount].id = msg.sender;
        PatientCount++;
    }

    function modelResult(string memory _disease, uint _confidence) public  {
        //call the model and get the result
        address _patientId=msg.sender;
        patientInfo[_patientId].disease = _disease;
        patientInfo[_patientId].confidence = _confidence;
    }

     function Prescription(string memory ,string memory _disease, uint _confidence) public  {
        //call the model and get the result
                address _patientId=msg.sender;

        patientInfo[_patientId].disease = _disease;
        patientInfo[_patientId].confidence = _confidence;

     }
    //getter functions get the data given by the model.
}
