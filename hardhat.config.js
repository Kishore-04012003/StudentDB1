require("@nomicfoundation/hardhat-toolbox");
require("dotenv").config();

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.24",
    networks:{
      hardhat:{},
      sepolia:{
        url:"https://sepolia.infura.io/v3/ae753ecda565465f8a8f5451a78fd787",
        accounts:[process.env.KEY]
      }
    }
};


