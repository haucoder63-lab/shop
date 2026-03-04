const Category = require('../model/Categories');
const express = require('express');

const router = express.Router();

router.get('/getcategories', async(req, res) => {
    try {
        const categories = await Category.getAllCategories();
        res.status(200).json(categories);

    } catch (error) {
        res.status(500).json({ error: error.message });
    }
})

router.post('/addcategory', async(req, res) => {
    try {
        const { name, thumbnail, status } = req.body;
        const newCategory = await Category.createCategory(name, thumbnail, status);
        console.log(newCategory);
        res.status(201).json(newCategory);

    } catch (error) {
        res.status(500).json({ error: error.message });
    }
})

router.put('/updatecategory/:id', async(req, res) => {
    try {
        const { id } = req.params;
        const { name, thumbnail, status } = req.body;
        const updatedCategory = await Category.updatedCategory(id, name, thumbnail, status);
        if (updatedCategory) {
            res.status(200).json(updatedCategory);
        } else {
            res.status(404).json({ error: 'Category not found!' });
        }

    } catch (error) {
        res.status(500).json({ error: error.message });
    }
})

router.delete('/deletecategory/:id', async(req, res) => {
    try {
        const { id } = req.params;
        const deletedCategory = await Category.deleteCategory(id);
        if (deletedCategory) {
            res.status(200).json({ message: "Category deleted successfully!" });
        } else {
            res.status(404).json({ error: 'Category not found!' });
        }

    } catch (error) {
        res.status(500).json({ error: error.message });
    }
})

module.exports = router;