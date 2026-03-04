const connection = require('../lib/dbConnect');

const getAllProducts = async() => {
    const [rows] = await connection.query('SELECT * FROM `products`');
    return rows;
}

const getProductById = async(id) => {
    const [rows] = await connection.query('SELECT * FROM `products` WHERE id = ?', [id]);
    return [rows[0]];
}

const createProduct = async(name, image, description, price, price_old, quantity, view, category_id, status) => {
    const [result] = await connection.query('INSERT INTO `products`(name, image, description, price, price_old, quantity, view, category_id, status) VALUES(?,?,?,?,?,?,?,?,?)', [name, image, description, price, price_old, quantity, view, category_id, status]);
    return result;
}

const updateProduct = async(id, name, image, description, price, price_old, quantity, view, category_id, status) => {
    const [result] = await connection.query('UPDATE `products` SET name = ?, image = ?, description = ?, price = ?, price_old = ?, quantity = ?, view = ?, category_id = ?, status = ? WHERE id = ?', [name, image, description, price, price_old, quantity, view, category_id, status, id]);
    return result;
}
const deleteProduct = async(id) => {
    const [result] = await connection.query('DELETE FROM `products` WHERE id = ?', [id]);
    return result;
}

const Product = { getAllProducts, getProductById, createProduct, updateProduct, deleteProduct };
module.exports = Product;