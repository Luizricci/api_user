CREATE DATABASE users;

\c users;

CREATE TABLE usuarios (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    photo TEXT 
);

CREATE TABLE post (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    content TEXT NOT NULL,
    user_id INTEGER REFERENCES usuarios(id) ON DELETE CASCADE,
    photo_post TEXT
);

INSERT INTO usuarios (name, email, password, photo) VALUES 
    ('Luiz', 'Luiz@gmail.com', 'amods', 'https://randomuser.me/api/portraits/men/1.jpg'),
    ('lucas', 'luccas@gmail.com', 'amods', 'https://randomuser.me/api/portraits/men/2.jpg'),
    ('João', 'joao@gmail.com', 'amods', 'https://randomuser.me/api/portraits/men/3.jpg'),
    ('Maria', 'maria@gmail.com', 'senha123', 'https://randomuser.me/api/portraits/women/1.jpg'),
    ('Ana', 'ana@gmail.com', 'senha456', 'https://randomuser.me/api/portraits/women/2.jpg'),
    ('Pedro', 'pedro@gmail.com', 'senha789', 'https://randomuser.me/api/portraits/men/4.jpg'),
    ('Carla', 'carla@gmail.com', 'senha101', 'https://randomuser.me/api/portraits/women/3.jpg'),
    ('Rafael', 'rafael@gmail.com', 'senha202', 'https://randomuser.me/api/portraits/men/5.jpg'),
    ('Fernanda', 'fernanda@gmail.com', 'senha303', 'https://randomuser.me/api/portraits/women/4.jpg');

INSERT INTO post (title, content, user_id, photo_post) VALUES 
    ('Viagem ao campo', 'Foi uma experiência incrível passar o fim de semana em contato com a natureza.', 4, 'https://picsum.photos/id/1018/400/300'),
    ('Meu novo setup de trabalho', 'Acabei de montar meu home office e ficou demais!', 5, 'https://picsum.photos/id/1005/400/300'),
    ('Receita de bolo de cenoura', 'Hoje fiz um bolo de cenoura com cobertura de chocolate que ficou perfeito!', 6, 'https://picsum.photos/id/1080/400/300'),
    ('Reflexões sobre a vida', 'Às vezes tudo que a gente precisa é parar e pensar um pouco...', 7, 'https://picsum.photos/id/1015/400/300'),
    ('Top 5 filmes do ano', 'Minha lista de filmes favoritos até agora, vale a pena assistir todos.', 8, 'https://picsum.photos/id/1025/400/300'),
    ('Primeira maratona!', 'Completei minha primeira maratona e estou me sentindo realizado.', 9, 'https://picsum.photos/id/1041/400/300'),
    ('Nascer do sol na praia', 'Hoje acordei cedo e vi esse nascer do sol maravilhoso.', 1, 'https://picsum.photos/id/1016/400/300'),
    ('Estudando programação', 'Entrando de cabeça no mundo da programação, começando por HTML e CSS!', 2, 'https://picsum.photos/id/1020/400/300');

