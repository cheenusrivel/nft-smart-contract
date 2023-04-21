# nft-smart-contract

* Develop and Deploy NFT smart contracts
* The smart contracts should be able to mint NFT
    * Mint only valid certain duration (example between 7 Jan to 14 Jan 2023)
    * Mint only once for each wallet and Receipt (refer to 3.i)
    * The receipt will have to be store in smart contract state
    * Only able to mint 5 NFT
    * The NFT should have metadata (name, description, image)
 * Script to deploy the smart contract

<h1> Setup </h1>

* Creating and deploying an ERC-721 smart contract on the Sepolia test network using <b> Metamask, Solidity, Hardhat, Pinata and Alchemy </b>
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


<h1> Deploy Smart Contract and mint using Remix IDE </h1>

![Screenshot 2023-04-21 054955](https://user-images.githubusercontent.com/88041827/233530910-907f0b01-1f06-4ac2-9219-da3a076b2bd5.png)
![Screenshot 2023-04-21 055214](https://user-images.githubusercontent.com/88041827/233530918-4f6c1126-0679-49c3-aa70-e3cd84f70ee0.png)
![Screenshot 2023-04-21 055235](https://user-images.githubusercontent.com/88041827/233530919-9fc88a2d-8b89-49e3-a725-90a7e75a2566.png)
![Screenshot 2023-04-21 060947](https://user-images.githubusercontent.com/88041827/233530922-1a62c1c7-ccb4-4227-8e87-eae5924875bb.png)


<h3> Reference  </h3>

https://www.web3.university/tracks/build-your-first-nft/how-to-create-an-nft
