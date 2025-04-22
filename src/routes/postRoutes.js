const express = require('express');
const router = express.Router();
const postController = require("../controllers/postControllers");
const upload = require("../config/upload")
const apikey = require("../config/apikey");

router.use(apikey);
/**
 * @swagger
 * tags:
 *  name: Posts
 *  description: Gerenciamento dos Posts dos users
 */

/**
 * @swagger
 * /api/posts:
 *   get:
 *     summary: Lista todos os Posts de Usuários
 *     tags: [Posts]
 *     responses:
 *       200:
 *         description: Lista retornada com sucesso
 */
router.get("/", postController.getAllPosts);
/**
 * @swagger
 * /api/posts/{id}:
 *   get:
 *     summary: Busca um Post por ID
 *     tags: [Posts]
 *     parameters:
 *       - in: path
 *         name: id
 *         required: true
 *         schema:
 *           type: integer
 *     responses:
 *       200:
 *         description: Post encontrado com sucesso
 *       404:
 *         description: Post não encontrado
 */
router.get("/:id", postController.getById);
/**
 * @swagger
 * /api/posts:
 *   post:
 *     summary: Cria um novo Post
 *     tags: [Posts]
 *     requestBody:
 *       required: true
 *       content:
 *         multipart/form-data:
 *           schema:
 *             type: object
 *             properties:
 *               title:
 *                 type: string
 *               content:
 *                 type: string
 *               user_id:
 *                 type: integer
 *               photo_post:
 *                 type: string
 *                 format: binary
 *     responses:
 *       201:
 *         description: Post criado com sucesso
 */
router.post("/", upload.single("photo_post"), postController.createPost);
/**
 * @swagger
 * /api/posts/{id}:
 *   put:
 *     summary: Atualiza um Post
 *     tags: [Posts]
 *     parameters:
 *       - in: path
 *         name: id
 *         required: true
 *         schema:
 *           type: integer
 *     requestBody:
 *       required: true
 *       content:
 *         application/json:
 *           schema:
 *             type: object
 *             properties:
 *               name:
 *                 type: string
 *               house_id:
 *                 type: integer
 *     responses:
 *       200:
 *         description: Post atualizado com sucesso
 */
router.put("/:id", postController.editPost);
/**
 * @swagger
 * /api/posts/{id}:
 *   delete:
 *     summary: Deleta um Post
 *     tags: [Posts]
 *     parameters:
 *       - in: path
 *         name: id
 *         required: true
 *         schema:
 *           type: integer
 *     responses:
 *       200:
 *         description: Post deletado com sucesso
 *       404:
 *         description: Post não encontrado
 */
router.delete("/:id", postController.deletePost);

module.exports = router;