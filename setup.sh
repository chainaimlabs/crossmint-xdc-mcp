#!/bin/bash

# Project root
PROJECT_NAME="crossmint-xdc-mcp"
mkdir $PROJECT_NAME
cd $PROJECT_NAME

# Create folders
mkdir routes contracts

# Create .env with your provided addresses
cat > .env <<EOL
CROSSMINT_API_KEY=your_crossmint_server_api_key
CROSSMINT_WALLET_ADDRESS=your_crossmint_wallet_address

# XDC Apothem Network
XDC_CHAIN_ID=51
XDC_CHAIN_NAME=XDC Apothem Testnet
XDC_RPC=https://erpc.apothem.network

# ERC721 Contract
ERC721_CONTRACT=0x112b9Dd28019309c834309a4a966f827687c84d6

# Polytrade Addresses
POLYTRADE_BASE_ASSET=0x8A3a86d55b3F57b4Be9ce0113e09d0B9f7b12771
POLYTRADE_WRAPPED_ASSET=0x92F5a2bD28CCB184af7874e1707ABc7a7df45075
POLYTRADE_MARKETPLACE=0x0d1Aa18eFa38eE8c3d32A84b9D452EAf4E3D571d
EOL

# Create package.json
cat > package.json <<EOL
{
  "name": "crossmint-xdc-mcp",
  "version": "1.0.0",
  "type": "module",
  "main": "index.js",
  "scripts": {
    "start": "node index.js"
  },
  "dependencies": {
    "dotenv": "^16.0.0",
    "express": "^4.18.2",
    "node-fetch": "^3.3.2",
    "ethers": "^5.7.2"
  }
}
EOL

# Install dependencies
npm install

# Create index.js
cat > index.js <<'EOL'
import express from "express";
import dotenv from "dotenv";
import buy721 from "./routes/buy721.js";
import buyFractional from "./routes/buyFractional.js";

dotenv.config();

const app = express();
app.use(express.json());

app.use("/buy721", buy721);
app.use("/buyFractional", buyFractional);

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(\`Crossmint MCP server running on port \${PORT}\`);
});
EOL

# Create crossmint.js
cat > crossmint.js <<'EOL'
import fetch from "node-fetch";
import dotenv from "dotenv";
dotenv.config();

const CROSSMINT_API_KEY = process.env.CROSSMINT_API_KEY;
const CROSSMINT_WALLET_ADDRESS = process.env.CROSSMINT_WALLET_ADDRESS;

export async function sendTransaction({ to, data, value = "0x0" }) {
  const response = await fetch(\`https://staging.crossmint.com/api/2022-06-09/wallets/\${CROSSMINT_WALLET_ADDRESS}/transactions\`, {
    method: "POST",
    headers: {
      "X-API-KEY": CROSSMINT_API_KEY,
      "Content-Type": "application/json",
    },
    body: JSON.stringify({
      params: {
        call: {
          to,
          data,
          value
        },
        chain: "xdc-apothem"
      }
    }),
  });
  if (!response.ok) throw new Error(await response.text());
  return await response.json();
}
EOL

# Create routes/buy721.js
cat > routes/buy721.js <<'EOL'
import express from "express";
import { sendTransaction } from "../crossmint.js";
import ERC721ABI from "../contracts/ERC721.json" assert { type: "json" };
import { ethers } from "ethers";
import dotenv from "dotenv";
dotenv.config();

const router = express.Router();

router.post("/", async (req, res) => {
  const contractAddress = process.env.ERC721_CONTRACT;
  const { tokenId, price } = req.body;
  try {
    const iface = new ethers.utils.Interface(ERC721ABI);
    const data = iface.encodeFunctionData("buy", [tokenId]);
    const value = ethers.utils.hexValue(price);

    const tx = await sendTransaction({
      to: contractAddress,
      data,
      value
    });
    res.json({ success: true, tx });
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
});

export default router;
EOL

# Create routes/buyFractional.js
cat > routes/buyFractional.js <<'EOL'
import express from "express";
import { sendTransaction } from "../crossmint.js";
import PolytradeABI from "../contracts/PolytradeMarketplace.json" assert { type: "json" };
import { ethers } from "ethers";
import dotenv from "dotenv";
dotenv.config();

const router = express.Router();

router.post("/", async (req, res) => {
  const marketplaceAddress = process.env.POLYTRADE_MARKETPLACE;
  const baseAssetAddress = process.env.POLYTRADE_BASE_ASSET;
  const wrappedAssetAddress = process.env.POLYTRADE_WRAPPED_ASSET;

  const { assetId, amount } = req.body;
  try {
    const iface = new ethers.utils.Interface(PolytradeABI);
    const data = iface.encodeFunctionData("buyFraction", [
      assetId,
      amount,
      baseAssetAddress,
      wrappedAssetAddress
    ]);

    const tx = await sendTransaction({
      to: marketplaceAddress,
      data
    });
    res.json({ success: true, tx });
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
});

export default router;
EOL

# Create contracts/ERC721.json (placeholder ABI)
cat > contracts/ERC721.json <<EOL
[
  {
    "inputs": [
      { "internalType": "uint256", "name": "tokenId", "type": "uint256" }
    ],
    "name": "buy",
    "outputs": [],
    "stateMutability": "payable",
    "type": "function"
  }
]
EOL

# Create contracts/PolytradeMarketplace.json (placeholder ABI)
cat > contracts/PolytradeMarketplace.json <<EOL
[
  {
    "inputs": [
      { "internalType": "uint256", "name": "assetId", "type": "uint256" },
      { "internalType": "uint256", "name": "amount", "type": "uint256" },
      { "internalType": "address", "name": "baseAssetAddress", "type": "address" },
      { "internalType": "address", "name": "wrappedAssetAddress", "type": "address" }
    ],
    "name": "buyFraction",
    "outputs": [],
    "stateMutability": "nonpayable",
    "type": "function"
  }
]
EOL

echo "✅ Project setup complete!"
echo "👉 Next steps:"
echo "1. Fill in your .env with real API keys and wallet address."
echo "2. Replace contracts/ABIs with your actual contract ABIs if needed."
echo "3. Run 'npm start' to start the server."