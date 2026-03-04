const Banner = require('../model/Banner');
const express = require('express');

const router = express.Router();

router.get('/getbanner', async(req, res) => {
    try {
        const banner = await Banner.getAllBanners();
        res.status(200).json(banner);
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
})

router.post('/addbanner', async(req, res) => {
    try {
        const { image, title, status } = req.body;
        const newBanner = await Banner.createBanner(image, title, status);
        console.log(newBanner);
        res.status(201).json(newBanner);

    } catch (error) {
        res.status(500).json({ error: error.message });
    }
})

router.put('/updatebanner/:id', async(req, res) => {
    try {
        const { id } = req.params;
        const { image, title, status } = req.body;
        const updatedBanner = await Banner.updateBanner(id, image, title, status);
        if (updatedBanner) {
            res.status(200).json(updatedBanner);
        } else {
            res.status(404).json({ error: 'Banner not found' });
        }

    } catch (error) {
        res.status(500).json({ error: error.message });
    }
})

router.delete('/deletebanner/:id', async(req, res) => {
    try {
        const { id } = req.params;
        const deletedBanner = await Banner.deleteBanner(id);
        if (deletedBanner) {
            res.status(200).json({ message: 'Banner deleted successfully!' });
        } else {
            res.status(404).json({ error: 'Banner not found!' });
        }

    } catch (error) {
        res.status(500).json({ error: error.message });
    }
})

module.exports = router;