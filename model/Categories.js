const connection = require('../lib/dbConnect');

const getAllCategories = async() => {
    const [rows] = await connection.query('SELECT * FROM `categories`');
    return rows;
}

const createCategory = async(name, thumbnail, status) => {
    const [result] = await connection.query('INSERT INTO `categories`(name, thumbnail, status) VALUES(?,?,?)', [name, thumbnail, status]);
    return result;
}

const updatedCategory = async(id, name, thumbnail, status) => {
    const [result] = await connection.query('UPDATE `categories` SET name = ?, thumbnail = ?, status = ? WHERE id = ?', [name, thumbnail, status, id]);
    return result;
}

const deleteCategory = async(id) => {
    const [result] = await connection.query('DELETE FROM `categories` WHERE id = ?', [id]);
    return result;
}

const Category = { getAllCategories, createCategory, updatedCategory, deleteCategory };
module.exports = Category;