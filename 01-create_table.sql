INSERT INTO voluntario(id_voluntario, nome, cpf, data_nascimento, telefone, email, funcao)
VALUES
(1, 'Estephanie Oliveira souza', '22233344455', '2003-02-07', '11 912345678', 'stef.os@outlook.com', 'responsavel'),
(2, 'Ana Souza', '12345678901', '1990-05-20', '11987654321', 'ana@gmail.com', 'Coordenadora'),
(3, 'Marcos Lima', '98765432100', '1985-10-11', '11999887766', 'marcos@gmail.com', 'Supervisor'),
(4, 'Julia Fernandes', '45678912300', '1997-03-15', '11988776655', 'julia@gmail.com', 'Assistente');


INSERT INTO participacao(id_projeto, id_voluntario, funcao, data_entrada)
VALUES
(1, 1, 'Coordenadora de campo', '2024-01-10'),
(1, 3, 'Apoio geral', '2024-01-12'),
(2, 2, 'Supervisor de entregas', '2024-02-05'),
(3, 3, 'Assistente de saúde', '2024-03-02'),
(4, 2, 'Instrutor de informática', '2024-04-20'),
(5, 1, 'Gestora de obras', '2024-05-25');

INSERT INTO projeto(id_projeto, nome, area_atuacao, data_inicio, data_termino, descricao, id_responsavel) 
VALUES
(1, 'Projeto Sorrisos', 'Assistência Social', '2024-01-10', '2024-06-30', 'Apoio a crianças em vulnerabilidade.', 1),
(2, 'Alimento Solidário', 'Distribuição de Alimentos', '2024-02-05', '2024-12-20', 'Entrega mensal de cestas básicas.', 2),
(3, 'Mãos que Acolhem', 'Saúde Comunitária', '2024-03-01', '2024-09-10', 'Atendimentos básicos de saúde.', 3),
(4, 'Educar para o Futuro', 'Educação', '2024-04-15', '2024-11-30', 'Reforço escolar e inclusão digital.', 2),
(5, 'Construindo Pontes', 'Comunidade', '2024-05-20', '2024-10-25', 'Melhorias estruturais em comunidades.', 1);

INSERT INTO beneficiario ( nome, idade, endereco, id_projeto
) VALUES
('Carlos Mendes', 12, 'Rua Alegria, 100', 1),
('Fernanda Silva', 8, 'Rua Esperança, 50', 1),
('João Pereira', 45, 'Rua Central, 200', 2),
('Maria dos Anjos', 67, 'Travessa do Sol, 33', 3),
('Rita Santos', 16, 'Vila Verde, 122', 4);

INSERT INTO doacao (data_doacao, tipo, valor, descricao, id_doador, id_projeto
) VALUES
('2024-01-15', 'dinheiro', 500.00, 'Doação para materiais educativos.', 2, 4),
('2024-02-20', 'material', 0, 'Cestas básicas para 20 famílias.', 1, 2),
('2024-03-10', 'dinheiro', 1200.00, 'Apoio para compra de medicamentos.', 3, 3),
('2024-04-05', 'material', 0, 'Equipamentos de informática.', 1, 4),
('2024-05-18', 'dinheiro', 300.00, 'Ajuda emergencial ao projeto.', 2, 1);

INSERT INTO doador (nome_razao, Cpf_Cnpj, Tipo, contato
) VALUES
('Empresa Bom Coração', '11222333444455', 'Pessoa Jurídica', '1133445566'),
('Lucas Barros', '98765432101', 'Pessoa Física', '11988997766'),
('SuperMarket União', '55443322110088', 'Pessoa Jurídica', '1133557799');

UPDATE voluntario
SET contato = 'novoemail_ana@gmail.com'
WHERE id_voluntario = 1;

-- Atualizar o valor de uma doação
UPDATE doacao
SET valor = 600
WHERE id_doacao = 1;

--  Mudar o responsável de um projeto
UPDATE projeto
SET id_responsavel = 3
WHERE id_projeto = 2;

DELETE FROM beneficiario
WHERE id_beneficiario = 3;

--  Remover uma participação específica
DELETE FROM participacao
WHERE id_voluntario = 2 AND id_projeto = 1;

DELETE FROM projeto
WHERE id_projeto = 2
AND id_projeto NOT IN (SELECT id_projeto FROM beneficiario)
AND id_projeto NOT IN (SELECT id_projeto FROM doacao);

-- Listar voluntários em ordem alfabética

SELECT * FROM voluntario
ORDER BY nome ASC;

SELECT * FROM doacao
WHERE valor > 100;

-- Listar beneficiários de um projeto específico
SELECT beneficiario.nome, projeto.nome AS projeto
FROM beneficiario
JOIN projeto ON beneficiario.id_projeto = projeto.id_projeto
WHERE projeto.id_projeto = 1;

-- Quais doadores fizeram doações para cada projeto?
SELECT doador.nome_razao AS doador, projeto.nome AS projeto, doacao.tipo, doacao.valor
FROM doacao
JOIN doador ON doacao.id_doador = doador.id_doador
JOIN projeto ON doacao.id_projeto = projeto.id_projeto
ORDER BY projeto.nome;

-- Projetos que ainda não possuem data de término
SELECT nome, data_inicio
FROM projeto
WHERE data_termino IS NULL;






