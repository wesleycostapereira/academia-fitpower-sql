USE academia_fitpower;

-- 1. Listar todos os alunos ordenados pelo nome
SELECT * FROM Aluno ORDER BY nome;

-- 2. Buscar alunos do plano Premium
SELECT nome, cpf FROM Aluno
JOIN Plano ON Aluno.id_plano = Plano.id_plano
WHERE Plano.nome = 'Premium';

-- 3. Listar fichas de treino com nome do aluno e instrutor
SELECT FichaTreino.id_ficha, Aluno.nome AS aluno, Instrutor.nome AS instrutor
FROM FichaTreino
JOIN Aluno ON FichaTreino.id_aluno = Aluno.id_aluno
JOIN Instrutor ON FichaTreino.id_instrutor = Instrutor.id_instrutor;

-- 4. Buscar aulas e seus horários (limite 2)
SELECT * FROM AulaColetiva LIMIT 2;

-- 5. Aulas que um aluno participa
SELECT Aluno.nome, AulaColetiva.modalidade
FROM Aluno_Aula
JOIN Aluno ON Aluno_Aula.id_aluno = Aluno.id_aluno
JOIN AulaColetiva ON Aluno_Aula.id_aula = AulaColetiva.id_aula
WHERE Aluno.id_aluno = 1;
