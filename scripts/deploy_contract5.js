/****************************************************************
* Title: deploy_contract5.js 
* IDE: VSC
* Compiler: Hardhat / Waffle Hardhat
* Environment: Node.js 
* Connections: 
*      deploy_contracts5.js (inside "scripts" folder)
* Linked Files: hardhat-ethers library 
* Details:   
*      Run script for smart contract. 
*      ~compiles and runs program in JS
*      ?this looks like a hook to a web application. 
****************************************************************/

const main = async () => {

    //this get contractFactory takes in every smart contract

    const nftContractFactory = await hre.ethers.getContractFactory('RNGNFT');
    const nftContract = await nftContractFactory.deploy();
    await nftContract.deployed();
  
    //information
    console.log("\n~~ deploy_contract5.js Activated ~~~~~~~")
    console.log("Desc: RNG Contract Deploy")
  
    //deploy address 
    console.log("Contract deployed to (this is the contract address):")
    console.log(nftContract.address)
    console.log("")
    console.log("Contract Name: RNGNFT")

  
    // Call the function.
    let txn = await nftContract.makeAnEpicNFT()
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