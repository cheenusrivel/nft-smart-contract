# nft-smart-contract

a. Develop and Deploy NFT smart contracts
b. The smart contracts should be able to mint NFT
    i. Mint only valid certain duration (example between 7 Jan to 14 Jan 2023)
    ii. Mint only once for each wallet and Receipt (refer to 3.i)
    iii. The receipt will have to be store in smart contract state
    iv. Only able to mint 5 NFT
    v. The NFT should have metadata (name, description, image)
c. Script to deploy the smart contract

<h1> Setup </h1>

* Creating and deploying an ERC-721 smart contract on the Sepolia test network using Metamask, Solidity, Hardhat, Pinata and Alchemy  
* Export "PRIVATE KEY" from METAMASK account and update it to "PRIVATE_KEY" .env configuration to use local account
* Alchemy App API configuration are already done

<h1> Compile and Deploy Smart Contract </h1>

<h3> Get packages </h3>

* $ npm install

<h3> Run the following commands to complie </h3>

* $ npx hardhat compile![image]

![image](https://user-images.githubusercontent.com/88041827/233529808-a8427d61-9a58-434b-889d-fe2efff54949.png)

<h3> Run the following commands to deploy </h3>

* $ npx hardhat run scripts/deploy.js --network sepolia

![image](https://user-images.githubusercontent.com/88041827/233530628-57a33e53-50cb-4813-90fe-22417749f411.png)
