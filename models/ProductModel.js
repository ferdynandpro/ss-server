import { DataTypes } from "sequelize";
import db from "../config/Database.js";

const Product = db.define("Product", {
  id: {
    type: DataTypes.INTEGER,
    autoIncrement: true,
    primaryKey: true, // Kolom id sebagai PRIMARY KEY
  },
  name: {
    type: DataTypes.STRING,
    allowNull: false, // Kolom name wajib diisi
  },
  description: {
    type: DataTypes.TEXT,
    allowNull: true, // Deskripsi opsional
  },
  barcode: {
    type: DataTypes.STRING(50), // Bisa disesuaikan panjangnya
    allowNull: true, // Jika opsional
    unique: true // Tidak boleh ada barcode yang sama
  },  
  price: {
    type: DataTypes.DECIMAL(10, 2),
    allowNull: false, // Kolom price wajib diisi
  },
});

export default Product;
