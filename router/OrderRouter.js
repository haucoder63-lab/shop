const Order = require('../model/Order');
const express = require('express');

const router = express.Router();

router.get('/orders', async(req, res) => {
    try {
        const orders = await Order.getAllOrders();
        res.status(200).json(orders);

    } catch (error) {
        res.status(500).json({ error: 'Internal Server Error' });
    }
})

router.get('/orders/:id', async(req, res) => {
    try {
        const { id } = req.params;
        const order = await Order.getOrderById(id);
        if (order.length === 0) {
            res.status(404).json({ error: 'Order not found!' });
        } else {
            res.status(200).json(order[0])
        }

    } catch (error) {
        res.status(500).json({ error: 'Internal Server Error' });
    }
})

router.post('/orders', async(req, res) => {
    try {
        const { status, user_id } = req.body;
        const result = await Order.createOrder(status, user_id);
        res.status(201).json(result);

    } catch (error) {
        res.status(500).json({ error: error.message });
    }
})

router.put('/orders/:id', async(req, res) => {
    try {
        const { id } = req.params;
        const { status, user_id } = req.body;
        const result = await Order.updateOrder(id, status, user_id);
        res.status(200).json(result);

    } catch (error) {
        res.status(500).json({ error: error.message });
    }
})

router.delete('/orders/:id', async(req, res) => {
    try {
        const { id } = req.params;
        const result = await Order.deleteOrder(id);
        res.status(200).json(result);

    } catch (error) {
        res.status(500).json({ error: error.message });
    }
})
module.exports = router;