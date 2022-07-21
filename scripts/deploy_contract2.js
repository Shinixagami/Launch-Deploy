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

    const nftContractFactory = await hre.ethers.getContractFactory('CronoVerse2');
    const nftContract = await nftContractFactory.deploy();
    await nftContract.deployed();
  
    //information
    console.log("\n~~ deploy_contract2.js Activated ~~~~~~~")
    console.log("Desc: deploys contract with all functions called")
  
    //deploy address 
    console.log("Contract deployed to (this is the contract address):")
    console.log(nftContract.address)
    console.log("")
  
    // Call the function.
    let txn = await nftContract.makeAnNFT_Rimuru_Rare()
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