const connection = require('../lib/dbConnect');

const getAllGalleries = async() => {
    const [rows] = await connection.query('SELECT * FROM `gallery`');
    return rows;
}

const createGallery = async(image_url, product_id) => {
    const [result] = await connection.query('INSERT INTO `gallery`(image_url, product_id) VALUES(?,?)', [image_url, product_id]);
    return result;
}

const updatedGallery = async(id, image_url, product_id) => {
    const [result] = await connection.query('UPDATE `gallery` SET image_url = ?, product_id = ? WHERE id = ?', [image_url, product_id]);
    return result;
}

const deleteGallery = async(id) => {
    const [result] = await connection.query('DELETE FROM `gallery` WHERE id = ?', [id]);
    return result;
}

const Gallery = { getAllGalleries, createGallery, updatedGallery, deleteGallery };
module.exports = Gallery;