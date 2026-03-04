const connection = require('../lib/dbConnect');

const getAllBlogDetails = async() => {
    const [rows] = await connection.query('SELECT * FROM `blog_detail`');
    return rows;
}

const getBlogDetailById = async(id) => {
    const [rows] = await connection.query('SELECT * FROM `blog_detail` WHERE id = ?', [id]);
    return rows(0);
}

const createBlogDetail = async(blog_id, content) => {
    const [result] = await connection.query('INSERT INTO `blog_detail`(blog_id, content) VALUES(?,?)', [blog_id, content]);
    return result;
}

const updatedBlogDetail = async(id, blog_id, content) => {
    const [result] = await connection.query('UPDATE `blog_detail` SET blog_id = ?, content = ? WHERE id = ?', [blog_id, content, id]);
    return result;
}

const deleteBlogDetail = async(id) => {
    const [result] = await connection.query('DELETE FROM `blog_detail` WHERE id = ?', [id])
    return result;
}

const BlogDetail = { getAllBlogDetails, getBlogDetailById, createBlogDetail, updatedBlogDetail, deleteBlogDetail };
module.exports = BlogDetail;