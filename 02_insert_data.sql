USE academia_fitpower;

-- Planos
INSERT INTO Plano (nome, valor) VALUES
('Básico', 79.90),
('Intermediário', 109.90),
('Premium', 149.90);

-- Alunos
INSERT INTO Aluno (nome, cpf, telefone, id_plano) VALUES
('Lucas Andrade', '12345678901', '11999990000', 1),
('Mariana Silva', '98765432100', '11988880000', 2),
('João Pereira', '45678912300', '11977770000', 3);

-- Instrutores
INSERT INTO Instrutor (nome, especialidade) VALUES
('Carlos Alberto', 'Musculação'),
('Aline Rocha', 'Crossfit'),
('Fernando Souza', 'Alongamento');

-- Fichas de treino
INSERT INTO FichaTreino (data, id_aluno, id_instrutor) VALUES
('2025-01-10', 1, 1),
('2025-01-15', 2, 2),
('2025-01-20', 3, 3);

-- Aulas coletivas
INSERT INTO AulaColetiva (modalidade, horario) VALUES
('Spinning', '09:00:00'),
('Crossfit', '18:00:00'),
('Yoga', '07:30:00');

-- Participações em aulas
INSERT INTO Aluno_Aula VALUES
(1, 1),
(1, 2),
(2, 3),
(3, 1);
