pragma solidity ^0.4.20;

contract Sale {
    event NewSale(uint saleId, string tcNo);

    uint tcNoLength = 11;
    address owner;
    string tcNo;
    string[] public tcNos;

    constructor() public {
        owner = msg.sender;
    }

    function addTcNo(string _tcNo) public {
        if(bytes(_tcNo).length == tcNoLength) {
            uint id = tcNos.push(_tcNo) - 1;
            emit NewSale(id, _tcNo);
        }
    }
}
