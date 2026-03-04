const express = require('express');
const PORT = 3000;
const pool = require('./lib/dbConnect');
const bannerRouter = require('./router/bannerRouter');
const categoryRouter = require('./router/categoryRouter');
const productRouter = require('./router/productRouter');
const userRouter = require('./router/userRouter');
const orderRouter = require('./router/OrderRouter');

const app = express();
app.use(express.json());
app.use(bannerRouter);
app.use(categoryRouter);
app.use(productRouter);
app.use(userRouter);
app.use(orderRouter);

app.locals.db = pool;

app.listen(PORT, '0.0.0.0', () => {
    console.log(`server is running on port ${PORT}`);
})