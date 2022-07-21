require("@nomiclabs/hardhat-waffle");


/* invisible file */
require("dotenv").config({ path: ".env" });  

 module.exports = {
  solidity: '0.8.1',
  networks: {

    rinkeby: {

      /*THIS ACCOUNT IS YOUR TEST ACCOUNT - On Rinkeby Test Net */

      //Alchemy API Key 
      url: process.env.RINKEBY_ALCHEMY_KEY_HTTPS,

      /*
      Eth Address :  
  
      */

      //Private Key for importing accounts - very dangerous DO NOT disclose. 
      //only use test accounts.
      accounts: [process.env.RINKEBY_PRIVATE_KEY],

    },


    goerli: {


      //Alchemy API Key 
      url: process.env.GOERLI_ALCHEMY_KEY_HTTPS,

      /*
      Eth Address :  

      */

      //Private Key for importing accounts - very dangerous DO NOT disclose. 
      //only use test accounts.
      accounts: [process.env.GOERLI_PRIVATE_KEY],

    },


  },
};
