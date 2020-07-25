pragma solidity >=0.4.17 <0.7.0;

contract Land{
    string OwnerOfTheLand;
    
    function Land(string newOwner) public {
        
        OwnerOfTheLand = newOwner;
    }
    
    function setDetails(string newOwner) public {
        OwnerOfTheLand = newOwner;
    }
    
    function getDetails() public view returns(string){
        return(OwnerOfTheLand);
    }
}