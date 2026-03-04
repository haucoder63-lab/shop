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

router.get('/cart/:id', async(req, res) => {
    try {
        const cartId = req.params.id;
        const cartItem = await cart.getCartById(cartId);
        if (cartItem) {
            res.status(200).json(cartItem);
        } else {
            res.status(404).json({ error: 'Cart item not found!' });
        }

    } catch (error) {
        res.status(500).json({ error: error.message });
    }
})

router.post('/cart', async(req, res) => {
    try {
        const { user_id, product_id, quantity } = req.body;
        const newCartItem = await cart.createdCart(user_id, product_id, quantity);
        if (newCartItem) {
            res.status(201).json({ message: 'Cart item created successfully!' });
        } else {
            res.status(400).json({ error: 'Failed to create cart item!' });
        }

    } catch (error) {
        res.status(500).json({ error: error.message });
    }
})

router.put('/cart/:id', async(req, res) => {
    try {
        const cartId = req.params.id;
        const { user_id, product_id, quantity } = req.body;
        const updatedCartItem = await cart.updatedCart(cartId, user_id, product_id, quantity);
        if (updatedCartItem) {
            res.status(200).json({ message: 'Cart item updated successfully!' });
        } else {
            res.status(400).json({ error: 'Bad request! Failed to update cart item!' });
        }

    } catch (error) {
        res.status(500).json({ error: error.message });
    }
})

router.delete('/cart/:id', async(req, res) => {
    try {
        const cartId = req.params.id;
        const deletedCartItem = await cart.deleteCart(cartId);
        if (deletedCartItem) {
            res.status(200).json({ message: 'Cart item deleted successfully!' });
        } else {
            res.status(404).json({ error: 'Cart item not found!' });
        }

    } catch (error) {
        res.status(500).json({ error: error.message });
    }
})

module.exports = router;