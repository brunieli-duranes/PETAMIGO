-- =====================================
-- BANCO DE DADOS: PET AMIGO
-- =====================================

-- Criação do Banco de Dados
CREATE DATABASE PetAmigo;
USE PetAmigo;

-- ==========================
-- TABELA: ONG
-- ==========================
CREATE TABLE Ong (
    id_ong INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cidade VARCHAR(100),
    telefone VARCHAR(20),
    email VARCHAR(100)
);

-- ==========================
-- TABELA: ANIMAL
-- ==========================
CREATE TABLE Animal (
    id_animal INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    especie VARCHAR(50),
    raca VARCHAR(100),
    idade INT,
    status_adocao ENUM('Disponível', 'Adotado') DEFAULT 'Disponível',
    id_ong INT,
    FOREIGN KEY (id_ong) REFERENCES Ong(id_ong)
);

-- ==========================
-- TABELA: ADOTANTE
-- ==========================
CREATE TABLE Adotante (
    id_adotante INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(20),
    email VARCHAR(100),
    endereco VARCHAR(200)
);

-- ==========================
-- TABELA: ADOCAO
-- ==========================
CREATE TABLE Adocao (
    id_adocao INT AUTO_INCREMENT PRIMARY KEY,
    data_adocao DATE NOT NULL,
    id_animal INT,
    id_adotante INT,
    FOREIGN KEY (id_animal) REFERENCES Animal(id_animal),
    FOREIGN KEY (id_adotante) REFERENCES Adotante(id_adotante)
);

-- ==========================
-- INSERÇÃO DE DADOS
-- ==========================

-- Inserindo ONGs
INSERT INTO Ong (nome, cidade, telefone, email) VALUES
('Amor Animal', 'Campo Grande', '(67) 98888-1212', 'contato@amoranimal.org'),
('Patas Felizes', 'Campo Grande', '(67) 97777-3434', 'patasfelizes@gmail.com');

-- Inserindo Animais
INSERT INTO Animal (nome, especie, raca, idade, status_adocao, id_ong) VALUES
('Luna', 'Cachorro', 'Vira-lata', 2, 'Disponível', 1),
('Milo', 'Gato', 'Siamês', 1, 'Disponível', 1),
('Bidu', 'Cachorro', 'Poodle', 4, 'Adotado', 2);

-- Inserindo Adotantes
INSERT INTO Adotante (nome, telefone, email, endereco) VALUES
('Bruna Lima', '(67) 99888-1111', 'bruna.lima@gmail.com', 'Rua das Flores, 45'),
('Carlos Souza', '(67) 97777-2222', 'carlos.souza@gmail.com', 'Av. Brasil, 120'),
('Fernanda Alves', '(67) 98888-3333', 'fernanda.alves@gmail.com', 'Rua Ipê Amarelo, 78');

-- Inserindo Adoções
INSERT INTO Adocao (data_adocao, id_animal, id_adotante) VALUES
('2025-10-20', 3, 1);

-- ==========================
-- CONSULTAS SQL DE EXEMPLO
-- ==========================

-- Ver todos os animais disponíveis para adoção
SELECT nome, especie, raca, idade FROM Animal WHERE status_adocao = 'Disponível';

-- Ver todas as adoções realizadas
SELECT 
    A.nome AS Animal,
    AD.nome AS Adotante,
    O.nome AS ONG,
    Ad.data_adocao
FROM Adocao Ad
JOIN Animal A ON Ad.id_animal = A.id_animal
JOIN Adotante AD ON Ad.id_adotante = AD.id_adotante
JOIN Ong O ON A.id_ong = O.id_ong;

-- Atualizar status de um animal após adoção
UPDATE Animal
SET status_adocao = 'Adotado'
WHERE id_animal = 1;

-- Deletar um registro de adoção
DELETE FROM Adocao WHERE id_adocao = 1;
