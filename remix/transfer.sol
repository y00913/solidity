pragma solidity ^0.4.18;

contract Solution {
    address private To;
    bool private setCk = false;
    
    event WHO(address indexed caller);
    
    modifier promising {
        require(msg.value >= 1000000000000000000, 'lower than 1 ether');
        require(setCk, 'no set address');
        require(To != msg.sender, 'no send yourself');
        _;
    }

    function transfer() payable public promising{
        emit WHO(msg.sender);
        To.transfer(msg.value);
    }

    function set(address _To) public {
        To = _To;
        setCk = true;
    }
}
