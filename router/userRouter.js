const users = require('../model/User');
const express = require('express');
const bcrypt = require('bcryptjs');

const router = express.Router();

router.get('/getusers', async(req, res) => {
    try {
        const userList = await users.getAllUsers();
        res.status(200).json(userList);

    } catch (error) {
        res.status(500).json({ error: error.message });
    }
})

router.post('/adduser', async(req, res) => {
    try {
        const { email, password, role } = req.body;
        const salt = await bcrypt.genSalt(10);
        const hashedPassword = await bcrypt.hash(password, salt);
        const newUser = await users.createUser(email, hashedPassword, role);
        res.status(201).json(newUser);

    } catch (error) {
        res.status(500).json({ error: error.message });
    }
})

router.get('/getuser/:id', async(req, res) => {
    try {
        const { id } = req.params;
        const user = await users.getUserById(id);
        if (user) {
            res.status(200).json(user);
        } else {
            res.json({ message: 'User not found!' });
        }

    } catch (error) {
        res.status(500).json({ error: error.message });
    }
})

router.put('/updateuser/:id', async(req, res) => {
    try {
        const { id } = req.params;
        const { email, password, role } = req.body;
        const salt = await bcrypt.genSalt(10);
        const hashedPassword = await bcrypt.hash(password, salt);
        const updatedUser = await users.updateUser(id, email, hashedPassword, role);
        if (updatedUser.affectedRows === 0) {
            res.json({ message: 'User not found!' });
        } else {
            res.status(200).json({ message: 'User updated successfully!' }, { updatedUser });
        }

    } catch (error) {
        res.status(500).json({ error: error.message });
    }
})

router.delete('/deleteuser/:id', async(req, res) => {
    try {
        const { id } = req.params;
        const deletedUser = await users.deleteUser(id);
        if (deletedUser.affectedRows === 0) {
            res.json({ message: 'User not found!' });
        } else {
            res.status(200).json({ message: 'User deleted successfully!', deletedUser }, { deletedUser });
        }

    } catch (error) {
        res.status(500).json({ error: error.message });
    }
})

module.exports = router;