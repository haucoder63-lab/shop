const connection = require('../lib/dbConnect');

const getAllOrders = async() => {
    const [rows] = await connection.query('SELECT * FROM `orders`');
    return rows;
}

const getOrderById = async(id) => {
    const [rows] = await connection.query('SELECT * FROM `orders` WHERE id = ?', [id]);
    return [rows[0]];
}

const createOrder = async(status, user_id) => {
    let code = '';
    for (let i = 0; i < 8; i++) {
        const key = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789abcdefghijklmnopqrstuvwxyz';
        code += key.charAt(Math.floor(Math.random() * key.length));
    }
    const [result] = await connection.query('INSERT INTO `orders`(code, status, user_id) VALUES(?,?,?)', [code, status, user_id]);
    return result;
}

const updateOrder = async(id, status, user_id) => {
    const [result] = await connection.query('UPDATE `orders` SET status = ?, user_id = ? WHERE id = ?', [status, user_id, id]);
    return result;
}

const deleteOrder = async(id) => {
    const [result] = await connection.query('DELETE FROM `orders` WHERE id = ?', [id]);
    return result;
}

const Order = { getAllOrders, getOrderById, createOrder, updateOrder, deleteOrder };
module.exports = Order;