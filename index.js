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
 
console.error(`Crossmint MCP server running on port,${PORT}`);

});
