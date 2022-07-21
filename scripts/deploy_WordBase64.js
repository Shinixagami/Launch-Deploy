/****************************************************************
* Title: deployWord.js 
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

    //write Smart Contracts Here
    const nftContractFactory = await hre.ethers.getContractFactory('WordNFT');
    const nftContract = await nftContractFactory.deploy();
    await nftContract.deployed();

    //information
    console.log("\n*~~~ [ deploy_WordBase64.js Activated ] ~~~~~~~~*")
    console.log("Desc: 3 Words NFT")

    //deploy address 
    console.log("Contract deployed to:")
    console.log(nftContract.address)

    // Call the function.
    let txn = await nftContract.makeAwordNFT()

    // Wait for it to be mined.
    await txn.wait()

    //Link
    var counter1 = 0;
    console.log("\nRarible Link:")
    console.log("NFT Link for #%s:", counter1)
    console.log("https://rinkeby.rarible.com/token/%s:%s",nftContract.address,counter1)
    console.log("")

    /*second NFT function*/
    txn = await nftContract. makeAwordNFT()

    // Wait for it to be mined.
    await txn.wait()

    //Link
    counter1 = counter1 + 1;
    console.log("\nRarible Link:")
    console.log("NFT Link for #%s:", counter1)
    console.log("https://rinkeby.rarible.com/token/%s:%s",nftContract.address,counter1)

    console.log("*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*")

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