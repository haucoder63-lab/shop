const mysql2 = require('mysql2/promise');

const pool = mysql2.createPool({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'shop',
    waitForConnections: true,
    connectionLimit: 10,
    queueLimit: 0,
    port: 3306,
    debug: true,
});

console.log('Đã kết nối đến cơ dữ liệu MySQL');

module.exports = pool;