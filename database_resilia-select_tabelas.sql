-- Saber quem são os alunos que entregaram o projeto do módulo 1, 
-- e estão com o conceito em "Pronto" ou "Mais que pronto" 

SELECT 
    *
FROM
    entregas
WHERE
    modulo_projeto = '1'
        AND conceito = 'pronto'
        OR conceito = 'mais que pronto';



-- Quantos projetos no total (entre todas as turmas) foram entregues com conceito
-- "Ainda não está pronto" e "Chegando lá".

SELECT 
    entregas.id_turma,
    entregas.conceito,
    COUNT(entregas.conceito) AS quantidade_conceito
FROM
    entregas
        INNER JOIN
    turma
WHERE
    turma.ID = entregas.id_turma
        AND entregas.conceito = 'ainda não está pronto'
        OR entregas.conceito = 'chegando lá'
GROUP BY entregas.id_turma , entregas.conceito
ORDER BY quantidade_conceito;


-- Consultar quantos alunos temos em cada turma. --

SELECT 
    id_turma, COUNT(id_turma) AS quantidade_de_alunos
FROM
    aluno
GROUP BY id_turma;


-- Qual a turma com a maior quantidade de projetos no "Mais que pronto"?

SELECT 
    id_turma, COUNT(id_turma) AS quantidade_maisq_pronto
FROM
    entregas
WHERE
    conceito = 'mais que pronto'
GROUP BY id_turma
ORDER BY quantidade_maisq_pronto;