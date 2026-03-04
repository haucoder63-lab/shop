const connection = require('../lib/dbConnect');
const getAllCarts = async() => {
    const [rows] = await connection.query('SELECT * FROM `cart`');
    return rows;
}

const getCartById = async(id) => {
    const [rows] = await connection.query('SELECT * FROM `cart` WHERE id = ?', [id]);
    return rows[0];
}

const createdCart = async(user_id, product_id, quantity) => {
    const [result] = await connection.query('INSERT INTO `cart`(user_id, product_id, quantity) VALUES(?,?,?)', [user_id, product_id, quantity]);
    return result;
}

const updatedCart = async(id, user_id, product_id, quantity) => {
    const [result] = await connection.query('UPDATE `cart` SET user_id = ?, product_id = ?, quantity = ? WHERE id = ?', [user_id, product_id, quantity, id]);
    return result;
}

const deleteCart = async(id) => {
    const [result] = await connection.query('DELETE FROM `cart` WHERE id = ?', [id]);
    return result;
}

const Cart = { getAllCarts, getCartById, createdCart, updatedCart, deleteCart };
module.exports = Cart;