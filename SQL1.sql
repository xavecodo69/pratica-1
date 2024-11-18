CREATE DATABASE pratica1;
USE pratica1;


CREATE TABLE Clientes (
    ID_Cliente INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Email VARCHAR(100),
    Telefone VARCHAR(20)
);


CREATE TABLE Colaboradores (
    ID_Colaborador INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Cargo VARCHAR(50),
    Email VARCHAR(100),
   Telefone VARCHAR (20)
);


CREATE TABLE Chamados (
    ID_Chamado INT AUTO_INCREMENT PRIMARY KEY,
    ID_Cliente INT NOT NULL,
    ColaboradorID INT NOT NULL,
    Titulo VARCHAR(150) NOT NULL,
    Descricao TEXT,
    Criticidade ENUM('Baixa', 'Média', 'Alta') NOT NULL,
    Status ENUM('Aberto', 'Em andamento', 'Resolvido') DEFAULT 'Aberto',
    Data_Abertura TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Data_Fechamento TIMESTAMP NULL,
    FOREIGN KEY (ID_Cliente) REFERENCES Clientes(ID_Cliente) ON DELETE CASCADE,
    FOREIGN KEY (ID_Colaborador) REFERENCES Colaboradores(ID_Colaborador) ON DELETE SET NULL
);