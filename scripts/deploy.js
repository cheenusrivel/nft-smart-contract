async function main() {
    // Grab the contract factory
    const NftSmartContract = await ethers.getContractFactory("NftSmartContract");
 
    // Start deployment, returning a promise that resolves to a contract object
    const deployedContract = await NftSmartContract.deploy(); // Instance of the contract
    console.log("Contract deployed to address:", deployedContract.address);
 }
 
 main()
   .then(() => process.exit(0))
   .catch(error => {
     console.error(error);
     process.exit(1);
   });