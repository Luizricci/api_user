const express = require('express');

const router = express.Router();

const usersController = require("../controllers/userControllers");

router.get("/", usersController.getAllUsers);
router.get("/:id", usersController.getUserById);
router.post("/addUser", usersController.createUser);   
router.put("/updateUser/:id", usersController.updateUser);
router.delete("/deleteUser/:id", usersController.deleteUser);

module.exports = router;
