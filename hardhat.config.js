/* 

require("@nomiclabs/hardhat-waffle");

// This is a sample Hardhat task. To learn how to create your own go to
// https://hardhat.org/guides/create-task.html

task("accounts", "Prints the list of accounts", async (taskArgs, hre) => {
  const accounts = await hre.ethers.getSigners();

  for (const account of accounts) {
    console.log(account.address);
  }
});

You need to export an object to set up your config
Go to https://hardhat.org/config/ to learn more

@type import('hardhat/config').HardhatUserConfig

*/



require("@nomiclabs/hardhat-waffle");

 module.exports = {
  solidity: '0.8.0',
  networks: {
    rinkeby: {

      /*THIS ACCOUNT IS YOUR TEST ACCOUNT - On Rinkeby Test Net */

      //Alchemy API Key 
      url: 'https://eth-rinkeby.alchemyapi.io/v2/iTNoiFQM5g56CeGMR1Q4-k34Yzxbd91w',

      /*
      Eth Address :  
      0x3B1cC85f65223544A807b43d164A0BCc99eF6623
      */


      //Private Key for importing accounts - very dangerous DO NOT disclose. 
      //only use test accounts.
      accounts: ['ebb2298a04a3a798a63cd2e70b37ef566ec62fdbc0c58d07e73574cb4c82e51b'],

    },
  },
};
