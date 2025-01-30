import crypto from "crypto";

// Key dan IV untuk enkripsi (panjang key harus 32 byte, IV 16 byte)
const ENCRYPTION_KEY = crypto.randomBytes(32); // Simpan ini di file environment (.env)
const IV = crypto.randomBytes(16);

export const encryptData = (data) => {
  const cipher = crypto.createCipheriv("aes-256-cbc", ENCRYPTION_KEY, IV);
  let encrypted = cipher.update(data, "utf8", "hex");
  encrypted += cipher.final("hex");
  return `${IV.toString("hex")}:${encrypted}`;
};

export const decryptData = (encryptedData) => {
  const [iv, encrypted] = encryptedData.split(":");
  const decipher = crypto.createDecipheriv(
    "aes-256-cbc",
    ENCRYPTION_KEY,
    Buffer.from(iv, "hex")
  );
  let decrypted = decipher.update(encrypted, "hex", "utf8");
  decrypted += decipher.final("utf8");
  return decrypted;
};
