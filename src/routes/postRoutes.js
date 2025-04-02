const express = require('express');

const router = express.Router();

const postController = require("../controllers/postControllers");

router.get("/", postController.getAllPosts);

module.exports = router;