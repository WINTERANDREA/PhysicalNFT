// SPDX-License-Identifier: MIT
pragma solidity 0.8.3;

import "@openzeppelin/contracts/token/ERC721/presets/ERC721PresetMinterPauserAutoId.sol";

contract PhysicalNFT is ERC721PresetMinterPauserAutoId {

    constructor() ERC721PresetMinterPauserAutoId("PhysicalNFT", "PNFT", "https://github.com/WINTERANDREA/PhysicalNFT.git") {}

    function tokenURI(uint256 tokenId) public view virtual override returns (string memory) {
       return string(abi.encodePacked(super.tokenURI(tokenId),".json"));
    }
}