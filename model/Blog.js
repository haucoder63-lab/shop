const connection = require('../lib/dbConnect');

const getAllBlogs = async() => {
    const [rows] = await connection.query('SELECT * FROM `blog`');
    return rows;
}

const createBlog = async(title, description, image_url) => {
    const [result] = await connection.query('INSERT INTO `blog`(title, description, image_url) VALUES(?,?,?)', [title, description, image_url]);
    return result;
}

const updateBlog = async(id, title, description, image_url) => {
    const [result] = await connection.query('UPDATE `blog` SET title = ?, description = ?, image_url = ? WHERE id = ?', [title, description, image_url, id]);
    return result;
}

const deleteBlog = async(id) => {
    const [result] = await connection.query('DELETE FROM `blog` WHERE id = ?', [id]);
    return result;
}

const Blog = { getAllBlogs, createBlog, updateBlog, deleteBlog };
module.exports = Blog;