import express from "express";
import { sendTransaction } from "../crossmint.js";
import PolytradeABI from "../contracts/PolytradeMarketplace.json" with { type: "json" };
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
