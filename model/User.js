const connection = require('../lib/dbConnect');

const getAllUsers = async() => {
    const [rows] = await connection.query('SELECT * FROM `users`');
    return rows;
}

const getUserById = async(id) => {
    const [rows] = await connection.query('SELECT * FROM `users` WHERE id = ?', [id]);
    return [rows[0]];
}

const createUser = async(email, password, role) => {
    const [result] = await connection.query('INSERT INTO `users`(email, password, role) VALUES(?,?, ?)', [email, password, role]);
    return result;
}

const updateUser = async(id, email, password, role) => {
    const [result] = await connection.query('UPDATE `users` SET email = ?, password = ?, role = ? WHERE id = ?', [email, password, role, id]);
    return result;
}

const deleteUser = async(id) => {
    const [result] = await connection.query('DELETE FROM `users` WHERE id = ?', [id]);
    return result;
}

const User = { getAllUsers, getUserById, createUser, updateUser, deleteUser };
module.exports = User;