const PostModel = require('../models/PostModel');

const getAllPosts = async (req, res) => {
    try {
        const posts = await PostModel.getPosts();
        res.json(posts);
    } catch (error) {
        console.error('Erro ao buscar posts:', error);
        res.status(500).json({ error: 'Erro ao buscar posts.' });
    }
}

module.exports = { getAllPosts };