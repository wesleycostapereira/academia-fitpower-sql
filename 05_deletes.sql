USE academia_fitpower;

-- 1. Remover aluno de uma aula
DELETE FROM Aluno_Aula
WHERE id_aluno = 1 AND id_aula = 2;

-- 2. Remover uma ficha de treino específica
DELETE FROM FichaTreino
WHERE id_ficha = 2;

-- 3. Remover uma aula coletiva
DELETE FROM AulaColetiva
WHERE id_aula = 3;
