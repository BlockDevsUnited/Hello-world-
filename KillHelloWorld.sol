pragma solidity ^0.4.16;



contract Suicide {
    /* Define variable owner of the type address */
    address owner;

    /* This function is executed at initialization and sets the owner of the contract */
    function Suicide() { 
        owner = msg.sender;
        
         }

    /* Function to recover the funds on the contract */
    function kill() { 
        if (msg.sender == owner) 
        selfdestruct(owner);
        
         }
}


contract Greeter is Suicide{
    
string greeting;


function Greeter(string _greeting) public {
    greeting = _greeting;
}

function set (string _greeting) public {
    greeting = _greeting;
}

function get() constant public returns (string) {
    return greeting;
}

    
}


