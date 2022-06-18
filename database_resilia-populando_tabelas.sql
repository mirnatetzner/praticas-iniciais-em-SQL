# Sprint 1
USE RESILIA;

INSERT INTO CURSO(FRENTE) VALUES("WEB DEV");
INSERT INTO CURSO(FRENTE) VALUES("DADOS");

INSERT INTO TURMA(CURSO) VALUES(1);
INSERT INTO TURMA(CURSO) VALUES(2);

INSERT INTO ALUNO(NOME, CPF, ID_TURMA) VALUES("PEDRO VITOR", "49345334645", 1);
INSERT INTO ALUNO(NOME, CPF, ID_TURMA) VALUES("CAROLINA SOUZA","49345334642",1);
INSERT INTO ALUNO(NOME, CPF, ID_TURMA) VALUES("KARINA SILVA", "54958284942", 2);
INSERT INTO ALUNO(NOME, CPF, ID_TURMA) VALUES("MIRNA RAMOS", "12345678910", 2);
INSERT INTO ALUNO(NOME, CPF, ID_TURMA) VALUES("LARRISSA LIRA", "49494949494", 1);
INSERT INTO ALUNO(NOME, CPF, ID_TURMA) VALUES("LARRISSA LIRA", "49494949494", 2);

INSERT INTO FACILITADOR(NOME, FRENTE, ID_TURMA) VALUES("LEO COSTA", "34566644432",1);
INSERT INTO FACILITADOR(NOME, FRENTE, ID_TURMA) VALUES("ANNA SOUSA", "43311122233",2);

# Sprint 2
SELECT * FROM resilia.entregas;
INSERT INTO entregas (link, modulo_projeto, id_aluno, conceito) VALUES ('https://www.devmedia.com.br/responsive-design-dicas-para-tornar-seu-site-acessivel-em-qualquer-resolucao/28316', 1, 1, 'pronto');
INSERT INTO entregas (link, modulo_projeto, id_aluno, conceito) VALUES ('https://regexcrossword.com/howtoplay', 1, 2, 'mais que pronto');
INSERT INTO entregas (link, modulo_projeto, id_aluno, conceito) VALUES ('https://www.youtube.com/watch?v=RhDrRLdcvjs&t=144s', 3, 3, 'pronto');
INSERT INTO entregas (link, modulo_projeto, id_aluno, conceito) VALUES ('https://www.youtube.com/watch?v=cjkHhPDCYLs', 1, 4, 'ainda não está pronto');
INSERT INTO entregas (link, modulo_projeto, id_aluno, conceito) VALUES ('https://www.youtube.com/watch?v=vOQDTM8cbR0', 1, 5, 'pronto');
INSERT INTO entregas (link, modulo_projeto, id_aluno, conceito) VALUES ('https://www.youtube.com/watch?v=tSAuUxnJlcA', 1, 6, 'chegando lá');

UPDATE aluno SET email ='pedromalabares@hotmail.com' WHERE ID = 1;
UPDATE aluno SET email = 'carolsouza@bol.com.br' WHERE ID = 2;
UPDATE aluno SET email = 'karinasilva@uol.com' WHERE ID = 3;
UPDATE aluno SET email = 'mirnaramos@outlook.com' WHERE ID = 4;
UPDATE aluno SET email = 'larrissalira@gmail.com' WHERE ID = 5;
UPDATE aluno SET email = 'larrissa@msn.com' WHERE ID = 6;