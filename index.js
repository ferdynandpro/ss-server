import express from "express";
import cors from "cors";
import dotenv from "dotenv";
import { errorHandler } from "./middlewares/ErrorHandler.js";
import AuthRoutes from "./routes/AuthRoutes.js";
import CustomerRoutes from "./routes/CustomerRoutes.js";
import ProductRoutes from "./routes/ProductRoutes.js";
import DiscountRoutes from "./routes/DiscountRoutes.js";
import logsRoute from './routes/LogsRoutes.js';

dotenv.config();

const app = express();

app.use(express.json());

app.use(cors({
  origin: "http://localhost:3000",
  methods: "GET,POST,PUT,DELETE",
  allowedHeaders: "Content-Type,Authorization"
}));

app.use('/api', logsRoute);
app.use("/api", AuthRoutes);
app.use("/api", CustomerRoutes);
app.use("/api", ProductRoutes);  
app.use("/api", DiscountRoutes); 

app.use(errorHandler);

const PORT = process.env.PORT || 4000;
app.listen(PORT, () => console.log(`Server is running on port ${PORT}...`));
