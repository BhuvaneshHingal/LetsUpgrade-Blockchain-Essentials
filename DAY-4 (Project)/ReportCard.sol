pragma solidity ^0.4.17 < 0.6.12; 

contract ReportCard{
    string public name;
    string public batch;
    uint public rollno;
    uint public marks_sub1;     // Assume total marks of sub1 = 100
    uint public marks_sub2;     // Assume total marks of sub2 = 100
    uint public marks_sub3;     // Assume total marks of sub3 = 100
    uint public marks_sub4;     // Assume total marks of sub4 = 100
    uint public result;
    uint public percent;
    string public status;
    
    function ReportCard(string newName, string newBatch, uint newRollno, uint newMarks_sub1, uint newMarks_sub2, uint newMarks_sub3, uint newMarks_sub4) public{
        
        name = newName;
        batch = newBatch;
        rollno = newRollno;
        marks_sub1 = newMarks_sub1;
        marks_sub2 = newMarks_sub2;
        marks_sub3 = newMarks_sub3;
        marks_sub4 = newMarks_sub4;
        result = newMarks_sub1 + newMarks_sub2 + newMarks_sub3 + newMarks_sub4;
        percent = ((result*100)/400); 
        if(percent < 40){
            status = "Fail";
        }else{
            status = "Pass";
        }
             
    }
    
    function getReportCardDetails() public view returns(string, string, uint, uint, uint, uint, uint, uint, uint, string) {
        return(name, batch, rollno, marks_sub1, marks_sub2, marks_sub3, marks_sub4, result,percent, status);    
    }
}
