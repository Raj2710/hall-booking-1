import express from "express";
import dotenv from "dotenv";
import cors from "cors";
import bodyParser from "body-parser";
import { hallRouter } from "./routers.js";

dotenv.config();
const app = express();
const PORT = process.env.PORT || 8000;

app.use(cors());
app.use(bodyParser.json());

app.get('/', function (req, res) {
  res.send('Homepage : Hall Bookiing API');
});

app.use("/api", hallRouter);

app.listen(PORT, console.log("Server running on port " + PORT));