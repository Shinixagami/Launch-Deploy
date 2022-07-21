/****************************************************************
This is a script to run it on a dev server for testing purposes

IT IS NOT USED TO BE DEPLOYED PUBLICLY
****************************************************************/

const main = async () => {
  const nftContractFactory = await hre.ethers.getContractFactory('marikit');  //contract name

  const nftContract = await nftContractFactory.deploy();  //deploys publicly 
  await nftContract.deployed();

  /* functions below will only run locally */

  //information
  console.log("\n~~ deploy_contract1.js Activated ~~~~~~~")
  console.log("Desc: deploys contract with all functions called")

  //deploy address 
  console.log("Contract deployed to (this is the contract address):")
  console.log(nftContract.address)
  console.log("")

  // Call the function.
  let txn = await nftContract.randomNft()
  // Wait for it to be mined.
  await txn.wait()

  //Link
  var counter1 = 0;
  console.log("Rarible Link:")
  console.log("NFT Link for #%s:", counter1)
  console.log("https://rinkeby.rarible.com/token/%s:%s",nftContract.address,counter1)
  console.log("")
  
  // Call the function.
  txn = await nftContract.pickANFT(2,2);
  // Wait for it to be mined.
  await txn.wait()
  //Link
  counter1 = counter1 + 1;
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