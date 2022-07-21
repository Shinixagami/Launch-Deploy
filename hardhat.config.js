require("@nomiclabs/hardhat-waffle");


/* invisible file */
require("dotenv").config({ path: ".env" });  

 module.exports = {
  solidity: '0.8.1',
  networks: {

    rinkeby: {

      /*THIS ACCOUNT IS YOUR TEST ACCOUNT - On Rinkeby Test Net */

      //Alchemy API Key 
      url: process.env.ALCHEMY_KEY,

      /*
      Eth Address :  
      0x3B1cC85f65223544A807b43d164A0BCc99eF6623
      */

      //Private Key for importing accounts - very dangerous DO NOT disclose. 
      //only use test accounts.
      accounts: [process.env.PRIVATE_KEY],

    },


  },
};
