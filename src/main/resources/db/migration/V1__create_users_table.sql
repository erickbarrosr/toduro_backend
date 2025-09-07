CREATE TABLE users (
    id SERIAL PRIMARY KEY,                      -- chave primária, auto incremento
    name VARCHAR(100) NOT NULL,                 -- nome do usuário (até 100 caracteres)
    email VARCHAR(100) UNIQUE NOT NULL,         -- e-mail (único, até 100 caracteres)
    password VARCHAR(255) NOT NULL,             -- senha (hash criptografado, até 255 caracteres)
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP -- data de criação automática
);