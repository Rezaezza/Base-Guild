// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract BAS10 {
    string public name = "MAWARNI";
    string public symbol = "MWR";
    uint256 public constant MAX_SUPPLY = 100;

    uint256 public totalSupply;
    mapping(uint256 => address) public ownerOf;
    mapping(address => uint256) public balanceOf;
    mapping(uint256 => string) private _tokenURIs;

    event Transfer(address indexed from, address indexed to, uint256 indexed tokenId);

    function mint(string memory uri) external returns (uint256) {
        require(totalSupply < MAX_SUPPLY, "Max supply reached");

        uint256 tokenId = totalSupply + 1;
        totalSupply = tokenId;

        ownerOf[tokenId] = msg.sender;
        balanceOf[msg.sender] += 1;
        _tokenURIs[tokenId] = uri;

        emit Transfer(address(0), msg.sender, tokenId);
        return tokenId;
    }

    function tokenURI(uint256 tokenId) external view returns (string memory) {
        require(ownerOf[tokenId] != address(0), "Token does not exist");
        return _tokenURIs[tokenId];
    }
