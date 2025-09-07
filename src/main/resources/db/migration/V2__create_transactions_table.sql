CREATE TABLE transactions (
    id SERIAL PRIMARY KEY,                       -- chave primária, auto incremento
    user_id INT NOT NULL,                        -- referência ao usuário
    description VARCHAR(255) NOT NULL,           -- descrição do lançamento
    amount NUMERIC(10,2) NOT NULL,               -- valor do lançamento (ex: 99999999.99)
    type VARCHAR(10) CHECK (type IN ('receita', 'despesa')) NOT NULL, -- tipo do lançamento
    category VARCHAR(50),                        -- categoria (ex: alimentação, transporte)
    date DATE NOT NULL,                          -- data do lançamento
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- data de criação automática
    CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);