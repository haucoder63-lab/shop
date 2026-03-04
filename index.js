const express = require('express');
const PORT = 3000;
const pool = require('./lib/dbConnect');
const bannerRouter = require('./router/bannerRouter');

const app = express();
app.use(express.json());
app.use(bannerRouter);

app.locals.db = pool;

app.listen(PORT, '0.0.0.0', () => {
    console.log(`server is running on port ${PORT}`);
})