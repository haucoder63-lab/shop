const connection = require('../lib/dbConnect');

const getAllBanners = async() => {
    const [rows] = await connection.query('SELECT * FROM `banner`');
    return rows;
}

const createBanner = async(image, title, status) => {
    const [result] = await connection.query('INSERT INTO `banner`(image, title, status) VALUES(?,?,?)', [image, title, status]);
    return result;
}

const updateBanner = async(id, image, title, status) => {
    const [result] = await connection.query('UPDATE `banner` SET image = ?, title = ?, status = ? WHERE id = ?', [image, title, status, id]);
    return result;
}

const deleteBanner = async(id) => {
    const [result] = await connection.query('DELETE FROM `banner` WHERE id = ?', [id]);
    return result;
}

const Banner = { getAllBanners, createBanner, updateBanner, deleteBanner };
module.exports = Banner;