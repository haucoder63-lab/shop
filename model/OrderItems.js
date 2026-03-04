const connection = require('../lib/dbConnect');

const getAllOrderItems = async() => {
    const [rows] = await connection.query('SELECT * FROM `order_items`');
    return rows;
}

const getOrderItemById = async(id) => {
    const [rows] = await connection.query('SELECT * FROM `order_items` WHERE id = ?', [id]);
    return rows(0);
}

const createOrderItem = async(quantity, price, order_id, product_id) => {
    const [result] = await connection.query('INSERT INTO `order_items`(quantity, price, order_id, product_id) VALUES(?,?,?,?)', [quantity, price, order_id, product_id]);
    return result;
}

const updateOrderItem = async(id, quantity, price, order_id, product_id) => {
    const result = await connection.query('UPDATE `order_items` SET quantity = ?, price = ?, order_id = ?, product_id = ? WHERE id = ?', [quantity, price, order_id, product_id, id]);
    return result;
}

const deleteOrderItem = async(id) => {
    const [result] = await connection.query('DELETE FROM `order_items` WHERE id = ?', [id]);
    return result;
}

const OrderItem = { getAllOrderItems, getOrderItemById, createOrderItem, updateOrderItem, deleteOrderItem };
module.exports = OrderItem;