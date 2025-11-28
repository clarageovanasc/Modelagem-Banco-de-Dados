-- Parte C — Manipulação de Dados
-- Tabela usada: seguranca.cidadao

-- 1. Adicionar uma nova linha
INSERT INTO seguranca.cidadao (nome, cpf, contato)
VALUES ('Ana Beatriz', '12345678901', '(61) 91111-2222');

-- 2. Atualizar o registro inserido
UPDATE seguranca.cidadao
SET contato = '(61) 92222-3333'
WHERE cpf = '12345678901';

-- 3. Excluir o registro
DELETE FROM seguranca.cidadao
WHERE cpf = '12345678901';
