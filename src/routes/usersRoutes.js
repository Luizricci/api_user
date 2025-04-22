const express = require('express');
const router = express.Router();
const UserController = require('../controllers/userControllers');
const upload = require("../config/upload");
const apikey = require("../config/apikey");

router.use(apikey);

/**
 * @swagger
 * tags:
 *  name: Users
 *  description: Gerenciamento de usuários
 */

/**
 * @swagger
 * /api/users:
 *   get:
 *     summary: Lista todos os Usuários
 *     tags: [Users]
 *     parameters:
 *       - in: query
 *         name: name
 *         schema:
 *           type: string
 *         description: Filtro por nome
 *     responses:
 *       200:
 *         description: Lista de Users
 */
router.get('/', UserController.getAllUsers);
/**
 * @swagger
 * /api/users/{id}:
 *   get:
 *     summary: Busca User por ID
 *     tags: [Users]
 *     parameters:
 *       - in: path
 *         name: id
 *         required: true
 *         schema:
 *           type: integer
 *     responses:
 *       200:
 *         description: User encontrado
 *       404:
 *         description: User não encontrado
 */
router.get('/:id', UserController.getUserById);
/**
 * @swagger
 * /api/users/{id}:
 *   delete:
 *     summary: Deleta um Usuário
 *     tags: [Users]
 *     parameters:
 *       - in: path
 *         name: id
 *         required: true
 *         schema:
 *           type: integer
 *     responses:
 *       200:
 *         description: User deletado com sucesso
 *       404:
 *         description: User não encontrado
 */
router.delete('/:id', UserController.deleteUser);
/**
 * @swagger
 * /api/users/{id}:
 *   put:
 *     summary: Atualiza um Usuário
 *     tags: [Users]
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
 *         description: User atualizado com sucesso
 */
router.put('/:id', UserController.updateUser);
/**
 * @swagger
 * /api/users:
 *   post:
 *     summary: Cria um novo Usuário
 *     tags: [Users]
 *     requestBody:
 *       required: true
 *       content:
 *         multipart/form-data:
 *           schema:
 *             type: object
 *             properties:
 *               name:
 *                 type: string
 *               email:
 *                 type: email
 *               password:
 *                 type: password
 *               photo:
 *                 type: string
 *                 format: binary
 *     responses:
 *       201:
 *         description: User criado com sucesso
 */
router.post('/', upload.single("photo"), UserController.createUser);

module.exports = router;