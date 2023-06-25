// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

contract SimpleStorage {
    uint256 public MyfavoriteNumber;

    Person[] public listOfPeople;

    mapping(string => uint256) public nameToFavoriteNumber;

    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    function store(uint256 _myfavoriteNumber) public {
        MyfavoriteNumber = _myfavoriteNumber;
    }

    function retrieve() public view returns (uint256) {
        return MyfavoriteNumber;
    }

    function addPerson(uint256 _favoriteNumber, string memory _name) public {
        listOfPeople.push(Person(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}
