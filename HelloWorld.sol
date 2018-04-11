pragma solidity ^0.4.16;


contract Greeter{
    
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