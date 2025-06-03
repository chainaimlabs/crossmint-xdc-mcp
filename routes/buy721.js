import express from "express";
import { sendTransaction } from "../crossmint.js";
import ERC721ABI from "../contracts/ERC721.json" with { type: "json" };
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
