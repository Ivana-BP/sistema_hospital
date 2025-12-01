----CONSULTA COM SELECT WHERE----
SELECT *
FROM paciente
WHERE sexo = 'masculino';

----CONSULTA COM JOIN----
SELECT p.nome, pr.data_abertura, pr.historico_clinico
FROM paciente p
JOIN prontuario pr
    ON p.id_paciente = pr.id_paciente;

----CONSULTA COM ORDER BY----
SELECT *
FROM paciente
ORDER BY nome ASC;

----CONSULTA COM LIMIT---
SELECT *
FROM materiais_medicos
ORDER BY quantidade_estoque ASC
LIMIT 2;