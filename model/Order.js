const connection = require('../lib/dbConnect');

const getAllOrders = async() => {
    const [rows] = await connection.query('SELECT * FROM `orders`');
    return rows;
}

const getOrderById = async(id) => {
    const [rows] = await connection.query('SELECT * FROM `orders` WHERE id = ?', [id]);
    return rows(0);
}

const createOrder = async(code, status, user_id, now) => {
    const now = new Date();
    for (let i = 0; i <= 10; i++) {
        const key = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
        code += key.charAt(Math.floor(Math.random() * key.length, 10));
    }

    const [result] = await connection.query('INSERT INTO `orders`(code, status, user_id, now) VALUES(?,?,?,?', [code, status, user_id, now]);
    return result;
}

const updateOrder = async(id, code, status, user_id, now) => {
    const now = new Date();
    for (let i = 0; i <= 10; i++) {
        const key = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
        code += key.charAt(Math.floor(Math.random() * key.length, 10));
    }
    const [result] = await connection.query('UPDATE `orders` SET code = ?, status = ?, user_id = ?, now = ? WHERE id = ?', [code, status, user_id, now, id]);
    return result;
}

const deleteOrder = async(id) => {
    const [result] = await connection.query('DELETE FROM `orders` WHERE id = ?', [id]);
    return result;
}

const Order = { getAllOrders, getOrderById, createOrder, updateOrder, deleteOrder };
module.exports = Order;