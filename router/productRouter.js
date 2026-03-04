const product = require('../model/products');
const express = require('express');

const router = express.Router();

router.get('/getproducts', async(req, res) => {
    try {
        const products = await product.getAllProducts();
        res.status(200).json(products);

    } catch (error) {
        res.status(500).json({ error: error.message });
    }
})

router.get('/getproduct/:id', async(req, res) => {
    try {
        const { id } = req.params;
        const productById = await product.getProductById(id);
        if (productById) {
            res.status(200).json(productById);
        } else {
            res.status(404).json({ error: 'Product not found!' });
        }

    } catch (error) {
        res.status(500).json({ error: error.message });
    }
})

router.post('/addproduct', async(req, res) => {
    try {
        const { name, image, description, price, price_old, quantity, view, category_id, status } = req.body;
        const newProduct = await product.createProduct(name, image, description, price, price_old, quantity, view, category_id, status);
        console.log(newProduct)
        if (newProduct) {
            res.status(201).json(newProduct);
            console.log("Product created successfully!", newProduct);
        } else {
            res.status(400).json({ error: 'bad request!' });
        }
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
})

router.put('/updateproduct/:id', async(req, res) => {
    try {
        const { id } = req.params;
        const { name, image, description, price, price_old, quantity, view, category_id, status } = req.body;
        const updatedProduct = await product.updateProduct(id, name, image, description, price, price_old, quantity, view, category_id, status);
        if (updatedProduct) {
            res.status(200).json(updatedProduct);
        } else {
            res.status(404).json({ error: 'Product not found!' });
        }

    } catch (error) {
        res.status(500).json({ error: error.message });
    }
})

router.delete('/deleteproduct/:id', async(req, res) => {
    try {
        const { id } = req.params;
        const deletedProduct = await product.deleteProduct(id);
        if (deletedProduct) {
            res.status(200).json({ message: 'Product deleted successfully!' });
        } else {
            res.status(404).json({ error: 'Product not found!' });
        }

    } catch (error) {
        res.status(500).json({ error: error.message });
    }
})

module.exports = router;