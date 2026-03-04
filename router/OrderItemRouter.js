const orderitemsRouter = require('../model/OrderItems');
const express = require('express');

const router = express.Router();

router.get('/orderitems', async(req, res) => {
    try {
        const orderitems = await orderitemsRouter.getAllOrderItems();
        res.status(200).json(orderitems);

    } catch (error) {
        res.status(500).json({ error: 'Internal Server Error' });
    }
})

router.get('/orderitems/:id', async(req, res) => {
    try {
        const { id } = req.params;
        const orderitems = await orderitemsRouter.getOrderItemById(id);
        if (orderitems.length === 0) {
            res.status(404).json({ error: 'OrderItem not found!' });
        } else {
            res.status(200).json(orderitems[0]);
        }

    } catch (error) {
        res.status(500).json({ error: 'Internal Server Error' });
    }
})

router.post('/orderitems', async(req, res) => {
    try {
        const { quantity, price, order_id, product_id } = req.body;
        const result = await orderitemsRouter.createOrderItem(quantity, price, order_id, product_id);
        res.status(201).json(result);

    } catch (error) {
        res.status(500).json({ error: error.message });
    }
})

router.put('/orderitems/:id', async(req, res) => {
    try {
        const { id } = req.params;
        const { quantity, price, order_id, product_id } = req.body;
        const result = await orderitemsRouter.updateOrderItem(id, quantity, price, order_id, product_id);
        res.status(200).json(result);

    } catch (error) {
        res.status(500).json({ error: error.message });
    }
});

router.delete('/orderitems/:id', async(req, res) => {
    try {
        const { id } = req.params;
        const result = await orderitemsRouter.deleteOrderItem(id);
        if (result.affectedRows === 0) {
            res.status(404).json({ error: 'OrderItem not found!' });
        } else {
            res.status(200).json(result);
        }

    } catch (error) {
        res.status(500).json({ error: error.message });
    }
})

module.exports = router;