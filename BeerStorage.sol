// SPDX-License-Identifier: MIT

pragma solidity 0.8.18;


// 1st simplified version:

// contract BeerGlassesStorage {

// struct BeerGlass{
//      string brewery;
//     uint256 year;
// }
    
//  BeerGlass public my_glass = BeerGlass("Flensburger Brewery", 2018);
// }


//2nd version which is where I have to type everything inside the code:

// contract BeerGlassesStorage {
//   struct BeerGlass {
//        string brewery;
//        uint256 year;
//        int256 capacity;
//        bool isSpecialEdition;
//     }

//   BeerGlass public glass1 = BeerGlass("TUM Blockchain Conference", 2024, 500, true);
//   BeerGlass public glass2 = BeerGlass("Giesinger", 2023, 500, false);
//   BeerGlass public glass3 = BeerGlass("Flensburger", 2019, 350, false);
//   BeerGlass public glass4 = BeerGlass("Stiegl", 2023, 350, false);
//}



//3rd option with adding beer glasses from the deployed contracts directly:

// contract BeerGlassesStorage {
//    struct BeerGlass{
//        uint256 year;
//        string brewery;
//    }
    
//    BeerGlass[] public listOfGlasses;
    
//    function addBeerGlass(string memory _brewery, uint256 _year) public {
//        listOfGlasses.push(BeerGlass(_year, _brewery) );
//    }

//}

// Final version with a all variables used:
contract BeerGlassesStorage {
  struct BeerGlass{
    string brewery;
    uint256 year;
    int256 capacity;
    bool isLimitedEdition;
  }

  BeerGlass [] public listOfGlasses;

  function addBeerGlass(string memory _brewery, uint256 _year, int256 _capacity, bool _isLimitedEdition) public {
    listOfGlasses.push(BeerGlass(_brewery, _year, _capacity, _isLimitedEdition));
  }
}
