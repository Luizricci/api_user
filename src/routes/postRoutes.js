const express = require('express');

const router = express.Router();

const postController = require("../controllers/postControllers");

router.post("/", postController.createPost);
router.get("/:id", postController.getPostById);
router.put("/updatePost/:id", postController.updatePost);
router.delete("/deletePost/:id", postController.deletePost);

module.exports = router;