const { expect } = require("chai")
const { ethers } = require("hardhat")
const { BigNumber } = require("ethers");

describe("OpCodes", function () {
    let owner
    let acc2
    let opCodes

    beforeEach(async function () {
        [owner, acc2] = await ethers.getSigners()
        const OpCodes = await ethers.getContractFactory("OpCodes", owner)
        opCodes = await OpCodes.deploy()
    })
    it("Should mint not more than 144 NFTs", async function(){
        await opCodes.connect(owner).mint(144);
        expect(await opCodes.ownerOf(0)).to.eq(owner.address);
        expect(await opCodes.ownerOf(143)).to.eq(owner.address);
        expect(await opCodes.connect(owner).tokenURI(0)).to.eq("00")
        await expect(opCodes.connect(owner).tokenURI(144)).to.be.reverted
        await expect(opCodes.connect(owner).mint(145)).to.be.revertedWith("Not enough tokens left")
    })
    it("Only owner can mint", async function(){
        await expect(opCodes.connect(acc2).mint(144)).to.be.revertedWith("Ownable: caller is not the owner")

    })
})