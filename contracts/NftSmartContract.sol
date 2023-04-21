//Contract based on https://docs.openzeppelin.com/contracts/3.x/erc721
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";


contract NftSmartContract is ERC721, Ownable {
    using Strings for uint256;
    uint today;

    uint public constant MAX_TOKENS = 10000;
    uint256 public price = 0.001 ether;
    uint private constant MINT_TOKENS = 5;
    uint256 public constant MAX_MINT_PER_WALLET = 10;

    uint256 public totalSupply;
    mapping(address => uint256) private mintedPerWallet;

    string public baseUri;
 
    constructor() ERC721("NFTSMARTCONTRACT", "NFT") { 
        today = block.timestamp;
     }

    // Public Functions
    function mint(address recipient, uint startDate, uint endDate, 
            string memory receipt, string memory tokenUri) 
            external payable {
        require(startDate < today, "Mint duration not only valid");
        require(endDate > today, "Mint duration not only valid");
        require(mintedPerWallet[recipient] < MAX_MINT_PER_WALLET, "Mint only 10 for each wallet");
        uint256 curTotalSupply = totalSupply;
        require(curTotalSupply + MINT_TOKENS <= MAX_TOKENS, "Exceeds total supply.");
    
        baseUri = tokenUri;

        for(uint256 i = 1; i <= MINT_TOKENS; ++i) {
            _safeMint(recipient, curTotalSupply + i, bytes(receipt));
        }

        mintedPerWallet[recipient] += 1;
        totalSupply += MINT_TOKENS;
    }
   
    function setBaseUri(string memory _baseUri) external onlyOwner {
        baseUri = _baseUri;
    }

    function setPrice(uint256 _price) external onlyOwner {
        price = _price;
    }
 
    function _baseURI() internal view virtual override returns (string memory) {
        return baseUri;
    }
}