pragma solidity ^0.4.18;

contract Solution {
    address private To = 0x75182569C5e409A229cd9d3B6d522eA136B86cde; //address[0]
    
    modifier promising {
        require(msg.value >= 1000000000000000000, 'lower than 1 ether');
        require(To != msg.sender, 'no send yourself');
        _;
    }

    function transfer() payable public promising{
        To.transfer(msg.value);
    }
}
