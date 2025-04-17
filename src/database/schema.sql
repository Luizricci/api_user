CREATE DATABASE users;

\c users;

CREATE TABLE usuarios (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);

CREATE TABLE post (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    content TEXT NOT NULL,
    user_id INTEGER REFERENCES usuarios(id) ON DELETE CASCADE
);

INSERT INTO usuarios (name, email, password) VALUES 
    ('Luiz', 'Luiz@gmail.com', 'amods'),
    ('lucas', 'luccas@gmail.com', 'amods'),
    ('João', 'joao@gmail.com', 'amods');

INSERT INTO post (title, content, user_id) VALUES 
    ('Post 1', 'Conteúdo do post 1', 1),
    ('Post 2', 'Conteúdo do post 2', 2),
    ('Post 3', 'Conteúdo do post 3', 3);

INSERT INTO usuarios (name, email, password) VALUES 
    ('Maria', 'maria@gmail.com', 'senha123'),
    ('Ana', 'ana@gmail.com', 'senha456'),
    ('Pedro', 'pedro@gmail.com', 'senha789'),
    ('Carla', 'carla@gmail.com', 'senha101'),
    ('Rafael', 'rafael@gmail.com', 'senha202'),
    ('Fernanda', 'fernanda@gmail.com', 'senha303'),
    ('Bruno', 'bruno@gmail.com', 'senha404');

    ALTER TABLE usuarios ADD COLUMN photo TEXT;
    ALTER TABLE post ADD COLUMN photo TEXT;