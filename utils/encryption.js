import crypto from 'crypto';

// Kunci untuk enkripsi (dapat disesuaikan atau diambil dari environment variable)
const ENCRYPTION_KEY = process.env.ENCRYPTION_KEY || 'mysecretkey'; // Jangan hardcode di production
const IV_LENGTH = 16; // Panjang IV (Initialization Vector)

// Fungsi untuk enkripsi
export const encryptPhoneNumber = (phoneNumber) => {
    const iv = crypto.randomBytes(IV_LENGTH); // IV yang berbeda setiap kali
    const cipher = crypto.createCipheriv('aes-256-cbc', Buffer.from(ENCRYPTION_KEY), iv);
    let encrypted = cipher.update(phoneNumber, 'utf8', 'hex');
    encrypted += cipher.final('hex');
    return iv.toString('hex') + ':' + encrypted; // Gabungkan IV dan data terenkripsi
};

// Fungsi untuk dekripsi (jika diperlukan)
export const decryptPhoneNumber = (encryptedPhoneNumber) => {
    const [ivString, encrypted] = encryptedPhoneNumber.split(':');
    const iv = Buffer.from(ivString, 'hex');
    const decipher = crypto.createDecipheriv('aes-256-cbc', Buffer.from(ENCRYPTION_KEY), iv);
    let decrypted = decipher.update(encrypted, 'hex', 'utf8');
    decrypted += decipher.final('utf8');
    return decrypted;
};
