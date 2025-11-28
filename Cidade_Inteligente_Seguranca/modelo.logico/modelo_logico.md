🧩 Modelo Lógico Relacional - Segurança

Este documento descreve o esquema lógico do banco de dados, detalhando as tabelas resultantes da normalização, suas colunas (atributos) e relacionamentos (Chaves Estrangeiras).

📋 Entidades Principais e Relacionamentos

1. Cidadão e Unidade Policial

Relacionamento N:N que resulta na entidade associativa Ocorrência.

Cidadão (id_cidadao [PK], nome, cpf, contato)

Unidade Policial (id_unidade [PK], nome, telefone, endereco, area_atuacao)

Ocorrência (id_ocorrencia [PK], id_cidadao [FK], id_unidade [FK], data_hora, descricao)

2. Gestão de Equipe (Unidade x Agente)

Relacionamento 1:N (Uma unidade tem vários agentes).

Agente de Segurança (id_agente [PK], id_unidade [FK], matricula, nome, funcao)

3. Monitoramento de Zonas

Relacionamento 1:N (Uma unidade monitora várias zonas).

Zona de Risco (id_zona [PK], id_unidade [FK], nome_zona, latitude, longitude)

4. Dispositivos e Monitoramento

Relacionamento 1:N entre Zona e Dispositivo, e N:N entre Unidade e Dispositivo (Detecta).

Dispositivo de Monitoramento (id_dispositivo [PK], id_zona [FK], numero_serie, latitude, longitude)

Detecta (id_unidade [FK], id_dispositivo [FK])

5. Patrulhamento

Relacionamento N:N entre Agentes e Patrulhamento (Participa).

Patrulhamento (id_patrulhamento [PK], data_hora_inicio, data_hora_fim, rota_realizada, viatura_utilizada)

Participa (id_agente [FK], id_patrulhamento [FK])

6. Gestão de Alertas e Chamados

Relacionamentos complexos entre Dispositivos, Alertas e Patrulhas.

Alerta em Tempo Real (id_alerta [PK], data_hora, descricao)

Gera (id_dispositivo [FK], id_alerta [FK]) -> Associação Dispositivo x Alerta

Chamado (id_chamado [PK], id_alerta [FK], id_patrulhamento [FK]) -> Associação Alerta x Patrulha (1:1)

7. Auditoria

Relacionamento 1:N para registro de logs.

Logs do Sistema (id_log [PK], id_patrulhamento [FK], id_usuario_acao, timestamp_acao, descricao_acao)

🔑 Legenda

[PK]: Primary Key (Chave Primária) - Identificador único.

[FK]: Foreign Key (Chave Estrangeira) - Link para outra tabela.
