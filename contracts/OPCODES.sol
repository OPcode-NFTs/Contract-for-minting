// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;
import "../ERC721A/ERC721A.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract OpCodes is ERC721A, Ownable{
    uint256 MAX_SUPPLY = 144;

    mapping(uint256 => string) baseURI_;
    
    constructor() ERC721A("OPCODE", "OPCD") {
        baseURI_[0] = "0";
        baseURI_[1] = " ";
        baseURI_[2] = " ";
        baseURI_[3] = " ";
        baseURI_[4] = " ";
        baseURI_[5] = " ";
        baseURI_[6] = " ";
        baseURI_[7] = " ";
        baseURI_[8] = " ";
        baseURI_[9] = " ";
        baseURI_[10] = "";
        baseURI_[11] = "";
        baseURI_[12] = "";
        baseURI_[13] = "";
        baseURI_[14] = "";
        baseURI_[15] = "";
        baseURI_[16] = "";
        baseURI_[17] = "";
        baseURI_[18] = "";
        baseURI_[19] = "";
        baseURI_[20] = "";
        baseURI_[21] = "";
        baseURI_[22] = "";
        baseURI_[23] = "";
        baseURI_[24] = "";
        baseURI_[25] = "";
        baseURI_[26] = "";
        baseURI_[27] = "";
        baseURI_[28] = "";
        baseURI_[29] = "";
        baseURI_[30] = "";
        baseURI_[31] = "";
        baseURI_[32] = "";
        baseURI_[33] = "";
        baseURI_[34] = "";
        baseURI_[35] = "";
        baseURI_[36] = "";
        baseURI_[37] = "";
        baseURI_[38] = "";
        baseURI_[39] = "";
        baseURI_[30] = "";
        baseURI_[31] = "";
        baseURI_[41] = "";
        baseURI_[42] = "";
        baseURI_[43] = "";
        baseURI_[44] = "";
        baseURI_[45] = "";
        baseURI_[46] = "";
        baseURI_[47] = "";
        baseURI_[48] = "";
        baseURI_[49] = "";
        baseURI_[50] = "";
        baseURI_[51] = "";
        baseURI_[52] = "";
        baseURI_[53] = "";
        baseURI_[54] = "";
        baseURI_[55] = "";
        baseURI_[56] = "";
        baseURI_[57] = "";
        baseURI_[58] = "";
        baseURI_[59] = "";
        baseURI_[60] = "";
        baseURI_[61] = "";
        baseURI_[62] = "";
        baseURI_[63] = " ";
        baseURI_[64] = " ";
        baseURI_[65] = " ";
        baseURI_[66] = " ";
        baseURI_[67] = " ";
        baseURI_[68] = " ";
        baseURI_[69] = "";
        baseURI_[70] = "";
        baseURI_[71] = "";
        baseURI_[72] = "";
        baseURI_[73] = " ";
        baseURI_[74] = " ";
        baseURI_[75] = " ";
        baseURI_[76] = " ";
        baseURI_[77] = " ";
        baseURI_[78] = " ";
        baseURI_[79] = " ";
        baseURI_[80] = " ";
        baseURI_[81] = " ";
        baseURI_[82] = " ";
        baseURI_[83] = " ";
        baseURI_[84] = " ";
        baseURI_[85] = " ";
        baseURI_[86] = " ";
        baseURI_[87] = " ";
        baseURI_[88] = " ";
        baseURI_[89] = " ";
        baseURI_[90] = " ";
        baseURI_[91] = " ";
        baseURI_[92] = "";
        baseURI_[93] = "";
        baseURI_[94] = "";
        baseURI_[95] = "";
        baseURI_[96] = "";
        baseURI_[97] = "";
        baseURI_[98] = "";
        baseURI_[99] = "";
        baseURI_[100] = "";
        baseURI_[101] = "";
        baseURI_[102] = "";
        baseURI_[103] = " ";
        baseURI_[104] = "";
        baseURI_[105] = " ";
        baseURI_[106] = " ";
        baseURI_[107] = " ";
        baseURI_[108] = " ";
        baseURI_[109] = "";
        baseURI_[110] = "";
        baseURI_[111] = "";
        baseURI_[112] = "";
        baseURI_[113] = "";
        baseURI_[114] = "";
        baseURI_[115] = "";
        baseURI_[116] = "";
        baseURI_[117] = " ";
        baseURI_[118] = " ";
        baseURI_[119] = " ";
        baseURI_[120] = " ";
        baseURI_[121] = " ";
        baseURI_[121] = " ";
        baseURI_[122] = " ";
        baseURI_[123] = " ";
        baseURI_[124] = " ";
        baseURI_[125] = " ";
        baseURI_[126] = " ";
        baseURI_[127] = " ";
        baseURI_[128] = "";
        baseURI_[129] = " ";
        baseURI_[130] = " ";
        baseURI_[131] = " ";
        baseURI_[132] = "";
        baseURI_[133] = " ";
        baseURI_[134] = " ";
        baseURI_[135] = "";
        baseURI_[136] = "";
        baseURI_[137] = "";
        baseURI_[138] = "";
        baseURI_[139] = "";
        baseURI_[140] = "";
        baseURI_[141] = "";
        baseURI_[142] = "";
        baseURI_[143] = "";
    }

    function mint(uint256 quantity) external onlyOwner{
        require(totalSupply() + quantity <= MAX_SUPPLY, "Not enough tokens left");
        _safeMint(msg.sender, quantity);
    }
    function __baseURI(uint256 tokenId) internal view returns (string memory) {
        return baseURI_[tokenId];
    }
    
    function tokenURI(uint256 tokenId) public view virtual override returns (string memory) {
        if (!_exists(tokenId)) revert URIQueryForNonexistentToken();

        string memory baseURI = __baseURI(tokenId);
        return bytes(baseURI).length != 0 ? string(abi.encodePacked(baseURI, _toString(tokenId))) : '';
    }
    
}