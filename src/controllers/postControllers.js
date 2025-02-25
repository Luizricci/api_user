const Post = require('../models/post');
const PostList = require('../models/postList');

const list = new PostList();

const router = {
    createPost: (req, res) => {
        try {
            const {userId, title, description, image} = req.body;
            if (!userId || !title || !description || !image) {
                throw new Error("Preencha todos os campos para criar um Post");
            }
            const post = new Post(userId, title, description, image);
            list.createPost(post);
            return res.status(201).json({ message: "Post Criado com sucesso", post });
        } catch (error) {
            res.status(400).json({ message: "Erro ao publicar o Post", error });
        }
    },

    getPostById: (req, res) =>{
        const {id} = req.params;
        try{
            const post = list.getPostById(id);
            res.json(post);
        }catch(error){
            res.status(404).json({message: error.message});
        }
    },
    updatePost: (req, res) => {
        try {
            res.status(200).json(list.updatePost(req.params.id, req.body));
        } catch (error) {
            res.status(404).json({ message: "erro ao editar o post", error });
        }
    },
    deletePost: (req, res) => {
        try {
            list.deletePost(req.params.id);
            res.status(200).json({ message: "Post deletado com sucesso" });
        } catch (error) {
            res.status(404).json({ message: "Erro ao deletar o post", error });
        }
    }

}

module.exports = router;	