require("@nomiclabs/hardhat-waffle");
require("dotenv").config();
require("@nomiclabs/hardhat-etherscan")
require("hardhat-gas-reporter");
require('solidity-coverage')
/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.4",
  gasReporter: {
    enabled: (process.env.REPORT_GAS) ? true : true,
    currency: "USD",
    coinmarketcap: process.env.COINMARKETCAP_API_KEY
  }
  
};
