----INSERT----
INSERT INTO paciente (nome, data_nascimento, sexo, cpf, telefone, nome_da_mae)
VALUES
('Joao Fulano', '2000-01-01', 'masculino', '000.000.000-00', '41999999999', 'Fulana Maria'),
('Joana Maria', '1999-05-20', 'feminino', '000.000.000-00', '11999999999', 'Maria Mariana'),
('Jose Fulano', '2001-01-01', 'masculino', '000.000.000-00', '47999999999', 'Fulana Maria Neta');

select * from paciente;

INSERT INTO endereco_paciente 
(rua, numero, complemento, bairro, cidade, estado, pais, id_paciente)
VALUES
('Rua das Flores', 123, 'Apto 10', 'Centro', 'Curitiba', 'PR', 'Brasil', 1),
('Av. Brasil', 500, 'Bloco B', 'Oficinas', 'São Paulo', 'SP', 'Brasil', 2),
('Rua Sol Nascente', 45, 'Casa', 'Vila Nova', 'Joinville', 'SC', 'Brasil', 3);

select * from endereco_paciente;

INSERT INTO dados_complementares_paciente
(contato_emergencia, nome_contato_emergencia, alergias, observacoes, id_paciente)
VALUES
('41988887777', 'Maria Clara', 'Nenhuma', 'paciente celiaco', 1),
('11999990000', 'João Mendes', 'Poeira', 'Paciente asmático', 2),
('47988889999', 'Carla Souza', 'Dipirona', 'intolerante a lactose', 3);

select * from dados_complementares_paciente;

INSERT INTO prontuario 
(data_abertura, historico_clinico, alergias, evolucao_clinica, exames_realizados, id_paciente)
VALUES
('2024-01-10 09:00', 'Histórico sem alterações', 'Nenhuma', 'Estável', 'Hemograma', 1),
('2024-02-02 14:30', 'Asma desde infância', 'Poeira', 'Melhora progressiva', 'Raio-X, Hemograma', 2),
('2024-03-01 08:15', 'Alergia a Dipirona', 'Dipirona', 'Paciente estável', 'ECG', 3);

select * from prontuario;

INSERT INTO convenio_paciente
(nome_convenio, numero_cartao_paciente, telefone_convenio, id_paciente)
VALUES
('Unimed', '1234567890', '4130004000', 1),
('Amil', '999888777', '1144445555', 2),
('SUS', '091112345', '41999999999', 3);

select * from convenio_paciente;

INSERT INTO profissional
(nome, registro_profissional, cargo, turno_trabalho)
VALUES
('Dr. Carlos Almeida', 'CRM123456', 'Médico', 'Diurno'),
('Enf. Paula Souza', 'COREN987654', 'Enfermeira', 'Noturno'),
('Dr. Renato Lima', 'CRM222333', 'Médico', 'Diurno');

select * from profissional;

INSERT INTO prescricao
(data_prescricao, validade_prescricao, observacoes, id_profissional, id_paciente)
VALUES
('2024-04-01 10:00', '2024-04-02 10:00', 'Uso conforme orientação', 1, 1),
('2024-04-02 15:30', '2024-04-03 15:30', 'paciente nao deseja medicacoes injetaveis', 2, 2),
('2024-04-03 08:00', '2024-04-04 08:00', 'Paciente com restrição de contato', 3, 3);

select * from prescricao;

INSERT INTO item_prescricao
(nome, dose, frequencia, via_administracao, duracao, horario, observacoes, id_prescricao)
VALUES
('Paracetamol', '500mg', '8/8h', 'Oral', '5 dias', '08:00', NULL, 1),
('Amoxicilina', '500mg', '12/12h', 'Oral', '7 dias', '09:00', 'Tomar após refeições', 2),
('Soro Fisiológico', '500ml', 'Contínuo', 'IV', '1 dia', NULL, NULL, 3);

select * from item_prescricao;

INSERT INTO dieta
(nome, descricao, via_de_administracao, volume_ml_hora, data_inicio, data_fim, observacoes)
VALUES
('Dieta Pastosa', 'Alimentos de fácil digestão', 'Oral', NULL, '2024-03-10', NULL, NULL),
('Dieta Enteral', 'Fresubin Energy 500ml', 'Enteral', '80', '2024-03-05', '2024-03-20', 'Monitorar aceitação'),
('Dieta Líquida', 'Somente líquidos', 'Oral', NULL, '2024-02-02', '2024-02-05', NULL);
 
select * from dieta;

INSERT INTO materiais_medicos
(nome, tipo, categoria, quantidade_estoque, fabricante, lote, validade)
VALUES
('Seringa 5ml', 'Descartável', 'Insumo', '200', 'MedPlast', 'A123', '2026-01-10'),
('Luvas Cirúrgicas', 'EPI', 'Proteção', '500', 'SafeHands', 'B987', '2025-06-15'),
('Cateter acesso central', 'cateter', 'item de emergencia', '297', 'Abs_saude', 'C555', '2027-08-01');

select * from materiais_medicos;

INSERT INTO medicamento
(nome_principio_ativo, apresentacao, concentracao)
VALUES
('Dipirona', 'Comprimido', '500mg'),
('Ibuprofeno', 'Solução Oral', '100mg/mL'),
('Amoxicilina', 'Cápsula', '500mg');

select * from medicamento;

INSERT INTO informacoes_medicamento
(lote, validade, quantidade_estoque, observacoes, id_medicamento)
VALUES
('L001', '2026-01-01', 150, NULL, 1),
('L002', '2025-12-12', 90, 'Armazenar refrigerado', 2),
('L003', '2027-06-10', 200, NULL, 3);

select * from informacoes_medicamento;
