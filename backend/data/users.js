import bcrypt from "bcryptjs";
import dotenv from "dotenv";

dotenv.config();

const users = [
    {
        name: "Admin User",
        email: process.env.ADMIN_EMAIL,
        password: bcrypt.hashSync(process.env.ADMIN_PASSWORD, 10),
        isAdmin: true,
    },
];

export default users;
