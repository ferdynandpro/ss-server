import Customer from "../models/CustomerModel.js";
import Discount from "../models/DiscountModel.js";

// Fungsi untuk validasi nomor telepon
const validatePhoneNumber = (phone_number) => {
  const phoneRegex = /^08\d+$/; // Nomor telepon harus dimulai dengan '08' dan hanya berisi angka
  return phoneRegex.test(phone_number);
};

// Get All Customers
export const getCustomers = async (req, res, next) => {
  try {
    const customers = await Customer.findAll();
    res.status(200).json(customers);
  } catch (error) {
    next(error);
  }
};

// Get Customer by ID
export const getCustomerById = async (req, res, next) => {
  try {
    const customer = await Customer.findOne({ where: { id: req.params.id } });
    if (!customer) {
      return res.status(404).json({ message: "Customer not found" });
    }
    res.status(200).json(customer);
  } catch (error) {
    next(error);
  }
};

// Create Customer
export const createCustomer = async (req, res, next) => {
  try {
    const { customer_name, phone_number } = req.body;  // Menambahkan phone_number
    if (!customer_name) {
      return res.status(400).json({ message: "Customer name is required" });
    }

    // Validasi nomor telepon
    if (!validatePhoneNumber(phone_number)) {
      return res.status(400).json({ message: "Phone number must start with '08' and contain only numbers" });
    }

    const customer = await Customer.create({ customer_name, phone_number });
    res.status(201).json({ message: "Customer created successfully", customer });
  } catch (error) {
    next(error);
  }
};

// Update Customer
export const updateCustomer = async (req, res, next) => {
  try {
    const { customer_name, phone_number } = req.body;  // Menambahkan phone_number

    // Validasi nomor telepon
    if (phone_number && !validatePhoneNumber(phone_number)) {
      return res.status(400).json({ message: "Phone number must start with '08' and contain only numbers" });
    }

    const [updated] = await Customer.update(
      { customer_name, phone_number, last_updated: new Date() },  // Perbarui nama dan nomor telepon
      { where: { id: req.params.id } }
    );
    if (!updated) {
      return res.status(404).json({ message: "Customer not found" });
    }
    res.status(200).json({ message: "Customer updated successfully" });
  } catch (error) {
    next(error);
  }
};

// Delete Customer
export const deleteCustomer = async (req, res, next) => {
  try {
    const customerId = req.params.id;

    // Check jika customer terkait dengan discount
    const discountCount = await Discount.count({ where: { customer_id: customerId } });
    if (discountCount > 0) {
      return res.status(400).json({ message: "Cannot delete customer with associated discounts." });
    }

    // Hapus customer
    const deleted = await Customer.destroy({ where: { id: customerId } });
    if (!deleted) {
      return res.status(404).json({ message: "Customer not found" });
    }

    res.status(200).json({ message: "Customer deleted successfully" });
  } catch (error) {
    next(error);
  }
};
