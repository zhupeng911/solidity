pragma solidity ^0.4.25;
contract Test{
    uint public x;
    function () public payable{
        uint a=1+x;
        uint double_a=2*a+1;
       // x=double_a;出错
    }
}

contract Caller{
    constructor() public payable{
        
    }
    
    function getBalance() public view returns(uint){
        return this.balance;
    }
    
    function callTest(address test) public{
        test.transfer(1 ether);
    }
}
