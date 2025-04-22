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
    ('Fernanda', 'fernanda@gmail.com', 'senha303', 'https://randomuser.me/api/portraits/women/4.jpg'),
    ('leoncio', 'leoncio@gmail.com', 'senha404', 'https://randomuser.me/api/portraits/men/6.jpg'),
    ('Gabriel', 'gabriel@gmail.com', 'senha111', 'https://randomuser.me/api/portraits/men/7.jpg'),
    ('Juliana', 'juliana@gmail.com', 'senha222', 'https://randomuser.me/api/portraits/women/5.jpg'),
    ('Carlos', 'carlos@gmail.com', 'senha333', 'https://randomuser.me/api/portraits/men/8.jpg'),
    ('Beatriz', 'beatriz@gmail.com', 'senha444', 'https://randomuser.me/api/portraits/women/6.jpg'),
    ('Felipe', 'felipe@gmail.com', 'senha555', 'https://randomuser.me/api/portraits/men/9.jpg'),
    ('Larissa', 'larissa@gmail.com', 'senha666', 'https://randomuser.me/api/portraits/women/7.jpg'),
    ('Thiago', 'thiago@gmail.com', 'senha777', 'https://randomuser.me/api/portraits/men/10.jpg'),
    ('Camila', 'camila@gmail.com', 'senha888', 'https://randomuser.me/api/portraits/women/8.jpg'),
    ('Rafael', 'rafael2@gmail.com', 'senha999', 'https://randomuser.me/api/portraits/men/11.jpg'),
    ('Fernanda', 'fernanda2@gmail.com', 'senha000', 'https://randomuser.me/api/portraits/women/9.jpg'),
    ('Lucas', 'lucas2@gmail.com', 'senha1234', 'https://randomuser.me/api/portraits/men/12.jpg'),
    ('Mariana', 'mariana@gmail.com', 'senha5678', 'https://randomuser.me/api/portraits/women/10.jpg'),
    ('João Pedro', 'joaopedro@gmail.com', 'senha91011', 'https://randomuser.me/api/portraits/men/13.jpg'),
    ('Ana Clara', 'anaclara@gmail.com', 'senha1213', 'https://randomuser.me/api/portraits/women/11.jpg'),
    ('Pedro Henrique', 'pedrohenrique@gmail.com', 'senha1415', 'https://randomuser.me/api/portraits/men/14.jpg'),
    ('Isabela', 'isabela@gmail.com', 'senha1617', 'https://randomuser.me/api/portraits/women/12.jpg'),
    ('Gustavo', 'gustavo@gmail.com', 'senha1819', 'https://randomuser.me/api/portraits/men/15.jpg'),
    ('Sofia', 'sofia@gmail.com', 'senha2021', 'https://randomuser.me/api/portraits/women/13.jpg'),
    ('Henrique', 'henrique@gmail.com', 'senha2223', 'https://randomuser.me/api/portraits/men/16.jpg'),
    ('Letícia', 'leticia@gmail.com', 'senha2425', 'https://randomuser.me/api/portraits/women/14.jpg'),
    ('Eduardo', 'eduardo@gmail.com', 'senha2627', 'https://randomuser.me/api/portraits/men/17.jpg'),
    ('Patrícia', 'patricia@gmail.com', 'senha2829', 'https://randomuser.me/api/portraits/women/15.jpg'),
    ('Rodrigo', 'rodrigo@gmail.com', 'senha3031', 'https://randomuser.me/api/portraits/men/18.jpg'),
    ('Carolina', 'carolina@gmail.com', 'senha3233', 'https://randomuser.me/api/portraits/women/16.jpg'),
    ('Bruno', 'bruno@gmail.com', 'senha3435', 'https://randomuser.me/api/portraits/men/19.jpg'),
    ('Vanessa', 'vanessa@gmail.com', 'senha3637', 'https://randomuser.me/api/portraits/women/17.jpg'),
    ('Diego', 'diego@gmail.com', 'senha3839', 'https://randomuser.me/api/portraits/men/20.jpg'),
    ('Renata', 'renata@gmail.com', 'senha4041', 'https://randomuser.me/api/portraits/women/18.jpg'),
    ('André', 'andre@gmail.com', 'senha4243', 'https://randomuser.me/api/portraits/men/21.jpg'),
    ('Paula', 'paula@gmail.com', 'senha4445', 'https://randomuser.me/api/portraits/women/19.jpg'),
    ('Marcelo', 'marcelo@gmail.com', 'senha4647', 'https://randomuser.me/api/portraits/men/22.jpg'),
    ('Aline', 'aline@gmail.com', 'senha4849', 'https://randomuser.me/api/portraits/women/20.jpg'),
    ('Vitor', 'vitor@gmail.com', 'senha5051', 'https://randomuser.me/api/portraits/men/23.jpg'),
    ('Tatiane', 'tatiane@gmail.com', 'senha5253', 'https://randomuser.me/api/portraits/women/21.jpg'),
    ('Leonardo', 'leonardo@gmail.com', 'senha5455', 'https://randomuser.me/api/portraits/men/24.jpg'),
    ('Simone', 'simone@gmail.com', 'senha5657', 'https://randomuser.me/api/portraits/women/22.jpg'),
    ('Fábio', 'fabio@gmail.com', 'senha5859', 'https://randomuser.me/api/portraits/men/25.jpg'),
    ('Michele', 'michele@gmail.com', 'senha6061', 'https://randomuser.me/api/portraits/women/23.jpg'),
    ('Ricardo', 'ricardo@gmail.com', 'senha6263', 'https://randomuser.me/api/portraits/men/26.jpg'),
    ('Débora', 'debora@gmail.com', 'senha6465', 'https://randomuser.me/api/portraits/women/24.jpg');   

INSERT INTO post (title, content, user_id, photo_post) VALUES 
    ('Viagem ao campo', 'Foi uma experiência incrível passar o fim de semana em contato com a natureza.', 4, 'https://picsum.photos/id/1018/400/300'),
    ('Meu novo setup de trabalho', 'Acabei de montar meu home office e ficou demais!', 5, 'https://picsum.photos/id/1005/400/300'),
    ('Receita de bolo de cenoura', 'Hoje fiz um bolo de cenoura com cobertura de chocolate que ficou perfeito!', 6, 'https://picsum.photos/id/1080/400/300'),
    ('Reflexões sobre a vida', 'Às vezes tudo que a gente precisa é parar e pensar um pouco...', 7, 'https://picsum.photos/id/1015/400/300'),
    ('Top 5 filmes do ano', 'Minha lista de filmes favoritos até agora, vale a pena assistir todos.', 8, 'https://picsum.photos/id/1025/400/300'),
    ('Primeira maratona!', 'Completei minha primeira maratona e estou me sentindo realizado.', 9, 'https://picsum.photos/id/1041/400/300'),
    ('Nascer do sol na praia', 'Hoje acordei cedo e vi esse nascer do sol maravilhoso.', 1, 'https://picsum.photos/id/1016/400/300'),
    ('Estudando programação', 'Entrando de cabeça no mundo da programação, começando por HTML e CSS!', 2, 'https://picsum.photos/id/1020/400/300');

