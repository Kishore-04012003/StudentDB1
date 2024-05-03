// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StudentDatabase {
    struct Student {
        uint256 id;
        string name;
    
    }
    mapping(uint256 => Student) public students;

     function addStudent(uint256 _id, string memory _name) public {
        students[_id] = Student(_id, _name);
    }
    
    function getStudent(uint256 _id) public view returns (uint256, string memory) {
        Student memory student = students[_id];
        return (student.id, student.name);
    }
    
    function updateStudent(uint256 _id, string memory _name) public {
        require(students[_id].id != 0, "Student not found");
        students[_id].name = _name;
    }
    
    function deleteStudent(uint256 _id) public {
        require(students[_id].id != 0, "Student not found");
        delete students[_id];
    }
    
    
   
}