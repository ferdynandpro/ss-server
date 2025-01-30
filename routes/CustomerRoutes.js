import express from "express";
import {
    getCustomers,
    getCustomerById,
    createCustomer,
    updateCustomer,
    deleteCustomer,
} from "../controllers/CustomerController.js";
import { authenticate } from "../middlewares/AuthMiddleware.js";  // Import middleware authenticate

const router = express.Router();

// Menggunakan middleware authenticate pada rute-rute berikut
router.get("/customers", authenticate, getCustomers);  // Rute untuk mengambil semua pelanggan
router.get("/customers/:id", authenticate, getCustomerById);  // Rute untuk mengambil pelanggan berdasarkan ID
router.post("/customers", authenticate, createCustomer);  // Rute untuk membuat pelanggan baru
router.put("/customers/:id", authenticate, updateCustomer);  // Rute untuk memperbarui pelanggan
router.delete("/customers/:id", authenticate, deleteCustomer);  // Rute untuk menghapus pelanggan

export default router;
