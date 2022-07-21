//SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/utils/Strings.sol"; //strings 

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol"; //nft storage 

import "@openzeppelin/contracts/utils/Counters.sol";   //counter 

import "@openzeppelin/contracts/utils/Base64.sol";  //base64 encoding for -browser protection

import "hardhat/console.sol"; //ethers hard hat

/* tokenUri seems to be already in ERC721a */
contract marikit is ERC721URIStorage {

/* counter imports */
  using Counters for Counters.Counter;
  Counters.Counter private _tokenIds;

/* IMPORT JSON FILE HERE FOR RANDOM GEN IN FUTURE - for now is preset & stuck on the doc*/
  string[] NFTARRAYHERE = [   
    
                    //THIS IS ARRAY [0] 
                    string( '{"name": "Rimuru Tempest", '

                    ' "description" : "Demon Lord.", '

                    ' "power level":25000000, '

                    ' "special abilities":"Raphael - King of Wisdom", '

                    ' "image":"https://i.imgur.com/WmACrGi.mp4"}'
                    ), 

                    //THIS IS ARRAY[1] 
                     string( '{"name": "Milim Nava", '

                    ' "description" : "Demon Lord.", '

                    ' "power level":11000000, '

                    ' "special abilities":"Battle Mode", '

                    ' "image":"https://i.imgur.com/AEBznYv.gif"}'
                    ),

                    //THIS IS ARRAY[2] 
                     string( '{"name": "Diablo", '

                    ' "description" : "Primordial Black -The First Demon", '

                    ' "power level":10000000, '

                    ' "special abilities":"Thought Domination", '

                    ' "image":"https://i.imgur.com/v8iN2qg.mp4"}'      
                    ),


                    //THIS IS ARRAY[3] 
                     string( '{"name": "Benimaru", '

                    ' "description" : "Crimson Circle - Fire Ogre", '

                    ' "power level":9500000, '

                    ' "special abilities":"Black Flame", '

                    ' "image":"https://i.imgur.com/TbHBtRZ.mp4"}'      
                    ),


                    //THIS IS ARRAY[4] 
                     string( '{"name": "Veldora Tempest", '

                    ' "description" : "Raging Storm Dragon.", '

                    ' "power level":15000000, '

                    ' "special abilities":"Dragon Breath.", '

                    ' "image":"https://i.imgur.com/CffGfFr.mp4"}'      
                    ),



                    //THIS IS ARRAY[5] 
                     string( '{"name": "Shion", '

                    ' "description" : "Wicked Oni", '

                    ' "power level":9000000, '

                    ' "special abilities": "Soul Eater - Hercules Edge.", '

                    ' "image":"https://i.imgur.com/LiSjqdV.mp4"}'      
                    ),



                    //THIS IS ARRAY[6] 
                     string( '{"name": "Shuna", '

                    ' "description" : "Oni Princess.", '

                    ' "power level":9000000, '

                    ' "special abilities":"Holy Bell", '

                    ' "image":"https://i.imgur.com/IDfbrKe.gif"}'      
                    ),

                    //THIS IS ARRAY[6] 
                     string( '{"name": "Souei ", '

                    ' "description" : "Shadow Leader.", '

                    ' "power level":9100000, '

                    ' "special abilities":"Shadow Striker", '

                    ' "image":"https://i.imgur.com/fT0U1ZM.mp4"}'      
                    ),
                    //THIS IS ARRAY[7] 
                     string( '{"name": "Hakurou", '

                    ' "description" : "Sword Saint / Wise One. ", '

                    ' "power level":9200000, '

                    ' "special abilities":"Foresight", '

                    ' "image":"https://i.imgur.com/uQs9z98.mp4"}'      
                    ),

                    //THIS IS ARRAY[8] 
                     string( '{"name": "Mokey D. Luffy", '

                    ' "description" : "Straw Hat", '

                    ' "power level":14000000, '

                    ' "special abilities":"Devil Fruit: Gomu Gomu no Mi ", '

                    ' "image":"https://i.imgur.com/kr1rXiM.mp4"}'      
                    ),


                    //THIS IS ARRAY[9] 
                     string( '{"name": "Roronoa Zoro", '

                    ' "description" : "Pirate Hunter. ", '

                    ' "power level":13000000, '

                    ' "special abilities":"Three Sword Style.", '

                    ' "image":"https://i.imgur.com/V8Ol2Wj.mp4"}'      
                    ),

                    //THIS IS ARRAY[10] 
                     string( '{"name": "Nami", '

                    ' "description" : "Navigator. ", '

                    ' "power level":1000000, '

                    ' "special abilities":"Sorcery Clima-Tact", '

                    ' "image":"https://i.imgur.com/nWXMr6y.mp4"}'      
                    ),

                    //THIS IS ARRAY[11] 
                     string( '{"name": "Kyojuro Rengoku", '

                    ' "description" : "Flame Hashira.", '

                    ' "power level":11000000, '

                    ' "special abilities":"Flame Breathing", '

                    ' "image":"https://i.imgur.com/x1iKTGg.mp4"}'      
                    ),

                    
                    //THIS IS ARRAY[12] 
                     string( '{"name": "Shinobu Kocho", '

                    ' "description" : "Insect Hashira.", '

                    ' "power level":7000000, '

                    ' "special abilities":"Insect Breathing", '

                    ' "image":"https://i.imgur.com/J8Omtmm.mp4"}'      
                    ),

                    //THIS IS ARRAY[13] 
                    string( '{"name": "Uzui Tengen", '

                    ' "description" : "Sound Hashira.", '

                    ' "power level":11200000, '

                    ' "special abilities":"Sound Breathing", '

                    ' "image":"https://i.imgur.com/jksMOHZ.gif"}'      
                    ),


                    //THIS IS ARRAY[15] 
                    string( '{"name": "Tanjiro Kamado", '

                    ' "description" : "Demon Slayer Protoge", '

                    ' "power level":6700000, '

                    ' "special abilities":"Hinokami Kagura", '

                    ' "image":"https://i.imgur.com/bTUuQsw.gif"}'      
                    ),


                    //THIS IS ARRAY[16] 
                    string( '{"name": "Zenitsu Agatsuma", '

                    ' "description" : "Thunder Breathing. ", '

                    ' "power level":6100000, '

                    ' "special abilities":"Seventh Form: Honoikazuchi no Kami", '

                    ' "image":"https://i.imgur.com/e4xdzAu.mp4"}'      
                    ),


                    //THIS IS ARRAY[17] 
                    string( '{"name": "Inosuke Hashibira", '

                    ' "description" : "Boar Hat.", '

                    ' "power level":6200000, '

                    ' "special abilities":"Eighth Fang: Explosive Rush", '

                    ' "image":"https://i.imgur.com/vQzwMAF.mp4"}'      
                    ),


                    //THIS IS ARRAY[18] 
                    string( '{"name": "Celia Claire", '

                    ' "description" : "genius magician", '

                    ' "power level":5100000, '

                    ' "special abilities":"Elemental Magic", '

                    ' "image":"https://i.imgur.com/Vbhkds1.png"}'      
                    ),

                    //THIS IS ARRAY[19] 
                    string( '{"name": "Dia Viekone", '

                    ' "description" : "talented mage.", '

                    ' "power level":5800000, '

                    ' "special abilities":"Multi-Chant", '

                    ' "image":"https://i.imgur.com/QZtSP8s.png"}'      
                    ),


                    //THIS IS ARRAY[20] 
                    string( '{"name": "Sistine Fibel", '

                    ' "description" : "White cat.", '

                    ' "power level":2600000, '

                    ' "special abilities":"Glenn Radars", '

                    ' "image":"https://i.imgur.com/C0zVgoS.png"}'      
                    ),

                    //THIS IS ARRAY[21] - 
                    string( '{"name": "Akame", '

                    ' "description" : "Famed Assasin.", '

                    ' "power level":6800000, '

                    ' "special abilities":"Murasame : turmp card. ", '

                    ' "image":"https://i.imgur.com/3raNswp.png"}'      
                    ),


                     //THIS IS ARRAY[22] - 23 in total
                    string( '{"name": "Yor Forger", '

                    ' "description" : "Thorn Princess.", '

                    ' "power level":5900000, '

                    ' "special abilities":"Poison Tolerance", '

                    ' "image":"https://i.imgur.com/FMK2gba.png"}'      
                    )

                    ] ;  //end of array

  //string(string A, string B, string C);

  //MAGICAL events - used to get a random address
  event NewEpicNFTMinted(address sender, uint256 ripidclea);

  constructor() ERC721 ("Marikit Test Non-Payable v1", "MRKT") {
      
    console.log("SMART CONTRACT FOR FREE NOT PAYABLE");

    /* we pay the smart contract*/
    // owner = msg.sender;

  }


 
  function pickRandomFile(uint256 tokenId) public view returns (string memory) {

    //turns it into a characters
    uint256 rand = random(string(abi.encodePacked("12356", Strings.toString(tokenId))));

    // .Length is used to find the numbers in the array.
    // rand is actually a random hash that comes from  ???
    // uses modulo '%' operatore to get remainder.
    //gets the remainder of the random character and array length?

    rand = rand % NFTARRAYHERE.length;  //checks array length

    return NFTARRAYHERE[rand];  //this is the random function
  } 


  //actual RNG function
  function random(string memory input) internal pure returns (uint256) {
      return uint256(keccak256(abi.encodePacked(input)));
  }



/* 
    public function here 
*/

  function randomNft() public 
  {

    /*contract is called & wallet has to sign*/

    //ether is the default value but 
    //will change on different networks 

    //200000000

    //200000000000000000

    //     5 Eth = 5000000000 Gwei 
    //    1 Eth = 1000000000 Gwei 
    //  0.1 Eth = 100000000 Gwei   OR 0.1 CRO
    // 0.01 Eth = 10000000 Gwei    OR 0.01 CRO
    // 0.05 Eth = 50000000 Gwei    OR 0.05 CRO
    //0.001 Eth = 1000000 Gwei     OR 0.001 CRO

    /*
    Payable
        require(msg.value == (0.1 ether), "Please submit 0.1 Matic or CRO");
    */
        
    uint256 newItemId = _tokenIds.current();   //token URI


    //this is why its STATIC everytime the contract returns
    //string memory is private and static.
    string memory first = pickRandomFile(newItemId); //stores what we have in the RNG function

    /*
    TURNS OUT STRING() HAS A BUILT IN METHOD THAT MERGES STRINGS TOGETHER.
    Example:
    string(string A, string B, string C);
    */
    
    /*
    abi.encode(arg);   
    IS THE ENCODE THAT creates an abi for it??
    */

    string memory combinedWord = string(abi.encodePacked(first));  //encodes and combines 


    // Get all the JSON metadata in place and base64 encode it.
    string memory jsonPicked = Base64.encode(
        bytes(
            string(
                abi.encodePacked(

                  combinedWord   //this is basically either RIMURU OR MILIM
     
                )
            )
        )
    );


  // Just like before, we prepend data:application/json;base64, to our data.
    string memory finalTokenUri = string(
        abi.encodePacked("data:application/json;base64,", jsonPicked)
    );

    console.log("\n----TokenUri----------------");
    console.log(finalTokenUri);
    console.log("----------------------------\n");


    //loop for printing out strings
    uint i;
    for(i = 0; i<20; i++){

        console.log("\n***TESTING string()***********************************************************");
        console.log("\ntestv1 ARRAY [ %s ]:\n", i);
        console.log(NFTARRAYHERE[i]);

    }

    console.log("Finishing up!");

    _safeMint(msg.sender, newItemId);
    
    // Update your URI!!!
    _setTokenURI(newItemId, finalTokenUri);

  
    _tokenIds.increment();
    console.log("An NFT w/ ID %s has been minted to %s", newItemId, msg.sender);

    // EMIT MAGICAL EVENTS.
    emit NewEpicNFTMinted(msg.sender, newItemId);


    // payable(owner).transfer(msg.value);

  } //END OF makeAnEpicNFT - MAIN FUNCTION



  function pickANFT(
    uint256 theArrayID,
    uint256 theQuantity
    ) public {

      uint256 newItemId = _tokenIds.current();  //token URI

      if(theQuantity <= 1){
       
        /* gets the new string */
        string memory first = NFTARRAYHERE[theArrayID];


        /* encondes the data abi */
        string memory combinedWord = string(abi.encodePacked(first));



        /* Encodes it in Base64 -the json is inside encoded */
        string memory jsonPicked = Base64.encode(
            bytes(
                string(
                    abi.encodePacked(

                      combinedWord   //this is basically either RIMURU OR MILIM
        
                    )
                )
            )
        );

        string memory finalTokenUri = string(
          abi.encodePacked("data:application/json;base64,", jsonPicked)
        );

        console.log("\n----TokenUri----------------");
        console.log(finalTokenUri);
        console.log("----------------------------\n");


        _safeMint(msg.sender, newItemId);

        // Update your URI!!!
        _setTokenURI(newItemId, finalTokenUri);

        _tokenIds.increment();
        console.log("An NFT w/ ID %s has been minted to %s", newItemId, msg.sender);

        emit NewEpicNFTMinted(msg.sender, newItemId);

        //------non-payable

      } // less than one MINT end


      if(theQuantity >= 2){

        uint256 j;
        for(j = 0; j <= theQuantity; j++){

           /* gets the new string */
          string memory first = NFTARRAYHERE[theArrayID];

          /* encondes the data abi */
          string memory combinedWord = string(abi.encodePacked(first));


          /* Encodes it in Base64 -the json is inside encoded */
          string memory jsonPicked = Base64.encode(
              bytes(
                  string(
                      abi.encodePacked(
                        combinedWord   //this is basically either RIMURU OR MILIM
                      )
                  )
              )
          );

          string memory finalTokenUri = string(
            abi.encodePacked("data:application/json;base64,", jsonPicked)
          );

          console.log("\n----TokenUri----------------");
          console.log(finalTokenUri);
          console.log("----------------------------\n");


          _safeMint(msg.sender, newItemId);

          // Update your URI!!!
          _setTokenURI(newItemId, finalTokenUri);

          _tokenIds.increment();
          console.log("An NFT w/ ID %s has been minted to %s", newItemId, msg.sender);

          emit NewEpicNFTMinted(msg.sender, newItemId);

          //------non-payable

        } // less than one MINT end


      } //QTY over 2

      
  } //end of function Pick NFT


  function pickANFT(
    uint256 theArrayID
    ) public {

      uint256 newItemId = _tokenIds.current();  //token URI
       
        /* gets the new string */
        string memory first = NFTARRAYHERE[theArrayID];


        /* encondes the data abi */
        string memory combinedWord = string(abi.encodePacked(first));

        /* Encodes it in Base64 -the json is inside encoded */
        string memory jsonPicked = Base64.encode(
            bytes(
                string(
                    abi.encodePacked(

                      combinedWord   //this is basically either RIMURU OR MILIM
        
                    )
                )
            )
        );

        string memory finalTokenUri = string(
          abi.encodePacked("data:application/json;base64,", jsonPicked)
        );

        console.log("\n----TokenUri----------------");
        console.log(finalTokenUri);
        console.log("----------------------------\n");


        _safeMint(msg.sender, newItemId);

        // Update your URI!!!
        _setTokenURI(newItemId, finalTokenUri);

        _tokenIds.increment();
        console.log("An NFT w/ ID %s has been minted to %s", newItemId, msg.sender);

        emit NewEpicNFTMinted(msg.sender, newItemId);

        //------non-payable

  } //end of function Pick NFT

  /* in solidity you can make overloaded functions */


}