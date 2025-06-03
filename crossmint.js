import fetch from "node-fetch";
import dotenv from "dotenv";
dotenv.config();

const CROSSMINT_API_KEY = process.env.CROSSMINT_API_KEY;
const CROSSMINT_WALLET_ADDRESS = process.env.CROSSMINT_WALLET_ADDRESS;

// Sends a transaction using the Crossmint server-side wallet
export async function sendTransaction({ to, data, value = "0x0" }) {
  const response = await fetch(
    `https://staging.crossmint.com/api/2022-06-09/wallets/${CROSSMINT_WALLET_ADDRESS}/transactions`,
    {
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
            value,
          },
          chain: "xdc-apothem",
        },
      }),
    }
  );
  if (!response.ok) throw new Error(await response.text());
  return await response.json();
}
