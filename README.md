# Module_3 CREATING A CUSTOM TOKEN.

In this project, I have created  a smart contract to create a token on a local hardhat network and interact with the smart contract using remix IDE. 

## Deployment on Local Hardhat Network

Follow these steps to deploy token on local hardhat network using local pc (in this module i have used VS Code)

1. Clone the repository and install its dependencies:

```
npm install
```

2. Install the `@remix-project/remixd` dependency to connect Remix IDE:

```
npm install -g @remix-project/remixd
```

3. Run the following command in the terminal to connect Remix IDE to the Hardhat local host:

```
remixd -s ./ --remix-ide https://remix.ethereum.org
```

4. Open a new terminal and start Hardhat's testing network:

```
npx hardhat node
```

5. Open the [Remix](https://remix.ethereum.org/) online IDE in your browser.

6. Go to File Explorer -> Workspaces -> Connect to localhost.

7. Click confirm to finalize the environment

8. Compile the contract in the Remix IDE.

9. In the deploy section of Remix, select the environment as "Dev-Hardhat Provider".

10. Deploy your contract on the local Hardhat network using the deploy button in Remix.

11. Confirm the deployment transaction in Remix.

12. Once the contract is deployed, you will see the contract address in the Remix console. Make note of this address for future interactions.

## Interacting with the Contract using Remix with Hardhat Provider

-After the contract is deployed, Remix will display the deployed contract instance in the "Deployed Contracts" section.

-Expand the deployed contract instance to see the available functions and their input fields.

-You can now interact with the contract by calling its functions and providing the required inputs.
  
  -To mint tokens, call the mint function and provide the receiver's address and the desired amount.
  -To burn tokens, call the burn function and provide the amount to be burned.
  -To transfer tokens, call the transfer function and provide the receiver's address and the amount to be transferred.
  
  ## Features

The following features are provided by the Project:

- `Token.sol` contains the source code of the token.
- Token attributes like `name`, `symbol` and `totalSupply`.
- `tokenBalance` displays the balance associated with a certain address.
- `mintToken` function is used to mint tokens to an address, restricted to be used only by the owner.
- `burnToken` function is used to burn tokens from an address.
- `transfer` function is used to transfer tokens from the sender address to the receiver address.
  

Only the owner can use `mintToken` function whereas all other functions can be used by other users/addresses.

After providing the inputs, click on the "Transact" button to execute the function.

## Authors

ADITYA BHATT
adityabhatt05101007@gmail.com

## License

This project is licensed under the MIT License - see the LICENSE.md file for details
