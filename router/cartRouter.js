const cart = require('../model/Cart');
const express = require('express');

const router = express.Router();

router.get('/cart', async(req, res) => {
    try {
        const carts = await cart.getAllCarts();
        res.status(200).json(carts);

    } catch (error) {
        res.status(500).json({ error: 'Internal Server Error' });
    }
})

module.exports = router;