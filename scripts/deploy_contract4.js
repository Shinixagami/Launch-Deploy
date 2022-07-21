


//dynamic array
const arrayPickNFT = [ "makeAnNFT_Rimuru", "makeAnNFT_Milim" , "makeAnNFT_Duck_base" , "makeAnNFT_Duck_burger" , "makeAnNFT_Duck_taco" , "makeAnNFT_Duck_strawberry" , "makeAnNFT_Duck_pineapple" , "makeAnNFT_Duck_melon" , "makeAnNFT_Duck_rare" , "makeAnNFT_Milim_Rare", "makeAnNFT_Rimuru_Rare" ];

const max = 11;
const min = 1; 

function getRandomInt() {

    return Math.floor(Math.random() * (max - min) + min); //The maximum is exclusive and the minimum is inclusive
  }

var randomNum  =  getRandomInt() 

console.log("\n---------------------------------------------------");
console.log("FUNCTION PICKED :", randomNum);
console.log("~ Array [", randomNum, "] ~\n" );
console.log("Function is :\n");
console.log(arrayPickNFT[randomNum]);
console.log("---------------------------------------------------\n");

const selectedFunction = arrayPickNFT[randomNum];
console.log("selectedFunction: ", selectedFunction);

/****************************************************************
* Title: deploy_contract1.js 
* IDE: VSC
* Compiler: Hardhat / Waffle Hardhat
* Environment: Node.js 
* Connections: 
*      MyEpicNFT (inside "contracts" folder)
*      run.js (inside "scripts" folder)
* Linked Files: hardhat-ethers library 
* Details:   
*      Run script for smart contract. 
*      ~compiles and runs program in JS
*      ?this looks like a hook to a web application. 
****************************************************************/

const main = async () => {

    //this get contractFactory takes in every smart contract

    const nftContractFactory = await hre.ethers.getContractFactory('CronoVerse4');
    const nftContract = await nftContractFactory.deploy();
    await nftContract.deployed();
  
    //information
    console.log("\n~~ deploy_contract4.js Activated ~~~~~~~")
    console.log("Desc: deploys contract with all functions called")
  
    //deploy address 
    console.log("Contract deployed to (this is the contract address):")
    console.log(nftContract.address)
    console.log("")
  
    // Call the function.

    //makeAnNFT_Rimuru

    //arrayPickNFT[randomNum]

    //selectedFunction


    console.log(arrayPickNFT[randomNum]);


    console.log(nftContract.makeAnNFT_Rimuru);

    let txn = await nftContract.arrayPickNFT[randomNum]()

    console.log(nftContract.makeAnNFT_Rimuru)


    // Wait for it to be mined.
    await txn.wait()
    //Link
    var counter1 = 0;
    console.log("Rarible Link:")
    console.log("NFT Link for #%s:", counter1)
    console.log("https://rinkeby.rarible.com/token/%s:%s",nftContract.address,counter1)
    console.log("")
  };
  
  const runMain = async () => {
    try {
      await main();
      process.exit(0);
    } catch (error) {
      console.log(error);
      process.exit(1);
    }
  };
  
  runMain();





/*

//random number generator ------------------------------

math.random(1- 10 )

RNG = 5     //test 
 
            //RNG 
arrayPickMFt [5] = nftPicked    //nftPicked is the variable we use 

nftPicked =  arrayPickMFt [5];   //makeAnNFT_Duck_taco()

const arrayPickNFT= [item1, item2,...];     

1 = makeAnNFT_Rimuru()
2 = makeAnNFT_Milim() 
3 = makeAnNFT_Duck_base() 
4 = makeAnNFT_Duck_burger()
5 = makeAnNFT_Duck_taco()
6 = makeAnNFT_Duck_strawberry()
7 = makeAnNFT_Duck_pineapple()
8 = makeAnNFT_Duck_melon()
9 = makeAnNFT_Duck_rare() 
10 = makeAnNFT_Milim_Rare()
11 = makeAnNFT_Rimuru_Rare()


/*
//FUNCTION that mints when you click.   ----------------------------

onC
let nftTxn = await connectedContract.makeAnNFT_Duck_pineapple();


*/
