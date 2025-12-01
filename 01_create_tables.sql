
---

# 🧩 **01_create_tables.sql**

```sql
CREATE DATABASE IF NOT EXISTS academia_fitpower;
USE academia_fitpower;

-- Tabela Plano
CREATE TABLE Plano (
    id_plano INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    valor DECIMAL(7,2) NOT NULL
);

-- Tabela Aluno
CREATE TABLE Aluno (
    id_aluno INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf CHAR(11) UNIQUE NOT NULL,
    telefone VARCHAR(20),
    id_plano INT NOT NULL,
    FOREIGN KEY (id_plano) REFERENCES Plano(id_plano)
);

-- Tabela Instrutor
CREATE TABLE Instrutor (
    id_instrutor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    especialidade VARCHAR(100)
);

-- Tabela FichaTreino
CREATE TABLE FichaTreino (
    id_ficha INT AUTO_INCREMENT PRIMARY KEY,
    data DATE NOT NULL,
    id_aluno INT NOT NULL,
    id_instrutor INT NOT NULL,
    FOREIGN KEY (id_aluno) REFERENCES Aluno(id_aluno),
    FOREIGN KEY (id_instrutor) REFERENCES Instrutor(id_instrutor)
);

-- Tabela AulaColetiva
CREATE TABLE AulaColetiva (
    id_aula INT AUTO_INCREMENT PRIMARY KEY,
    modalidade VARCHAR(50) NOT NULL,
    horario TIME NOT NULL
);

-- Associativa Aluno_Aula
CREATE TABLE Aluno_Aula (
    id_aluno INT,
    id_aula INT,
    PRIMARY KEY (id_aluno, id_aula),
    FOREIGN KEY (id_aluno) REFERENCES Aluno(id_aluno),
    FOREIGN KEY (id_aula) REFERENCES AulaColetiva(id_aula)
);
