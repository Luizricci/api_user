const User = require("../models/User");
const UserList = require("../models/UserList");

const Lista = new UserList();

//opcional adicionar usuarios fixos
Lista.addUser(new User("Luiz", "Luiz@gmail.com", 16));
Lista.addUser(new User("caio", "caio@gmail.com",19));

const router = {
    getAllUsers: (req, res) =>{
        res.json(Lista.getAllUsers());
    },
    getUserById: (req, res) =>{
        const {id} = req.params;
        try{
            const user = Lista.getUserById(id);
            res.json(user);
        }catch(error){
            res.status(404).json({message: error.message});
        }
    },
    createUser: (req, res) => {
        try {
            const { name, email, age } = req.body;
            if (!name || !email || !age) {
                throw new Error("Preencha todos os campos para criar um Usuário");
            }
            const user = new User(name, email, age);
            Lista.addUser(user);
            return res.status(201).json({ message: "User Criado com sucesso", user });
        } catch (error) {
            res.status(400).json({ message: "Erro ao criar um user", error });
        }
    },
    updateUser: (req, res) => {
        try {
            res.status(200).json(Lista.updateUser(req.params.id, req.body));
        } catch (error) {
            res.status(404).json({ message: "erro ao editar user", error });
        }
    },
    deleteUser: (req, res) => {
        try {
            Lista.deleteUser(req.params.id);
            res.status(200).json({ message: "Usuário deletado com sucesso" });
        } catch (error) {
            res.status(404).json({ message: "Erro ao deletar usuário", error });
        }
    }
};

module.exports = router;