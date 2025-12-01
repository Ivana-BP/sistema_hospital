----UPDATE----
---ALTERAÇÃO DE LOTE NO MEDICAMENTO 1'---
UPDATE informacoes_medicamento
 set lote ='kj999'
 where id_informacoes_medicamento =1;
 
select * from informacoes_medicamento;

---ALTERAÇÃO DE LOTE NO MEDICAMENTO 2'---
UPDATE informacoes_medicamento
 set lote ='abc123'
 where id_informacoes_medicamento =2;
 
select * from informacoes_medicamento;

---ALTERAÇÃO DE LOTE NO MEDICAMENTO 3'---
UPDATE informacoes_medicamento
 set lote ='oyç765'
 where id_informacoes_medicamento =3;

select * from informacoes_medicamento;

---DELETE---
---remover materiais médicos com estoque menor que 201---
DELETE FROM materiais_medicos
WHERE quantidade_estoque < 201;

select * from materiais_medicos;

---remover itens de prescrição sem horário definido---
DELETE FROM item_prescricao
WHERE horario IS NULL;

select * from item_prescricao;

---deletar convênios de pacientes atendidos pelo SUS”---
DELETE FROM convenio_paciente
WHERE nome_convenio = 'SUS';

select * from convenio_paciente;

