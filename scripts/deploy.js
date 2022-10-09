// We require the Hardhat Runtime Environment explicitly here. This is optional
// but useful for running the script in a standalone fashion through `node <script>`.
//
// You can also run a script with `npx hardhat run <script>`. If you do that, Hardhat
// will compile your contracts, add the Hardhat Runtime Environment's members to the
// global scope, and execute the script.
const { expect } = require("chai")
const hre = require("hardhat");
const ethers = hre.ethers
const OpCodesArtifact = require('../artifacts/contracts/OpCodes.sol/OpCodes.json')
async function main() {
    const [signer] = await ethers.getSigners()
    const OpCodes = await ethers.getContractFactory("OpCodes", signer)
    
    const opCodes = await OpCodes.deploy()
    await opCodes.deployed()
    console.log("OpCodes - ", opCodes.address)
   
}
main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });