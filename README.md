# sistema_hospital
Projeto fictício para gestão hospitalar realizado por natureza de trabalho acadêmico.

Este projeto apresenta o desenvolvimento de um banco de dados relacional voltado para a gestão hospitalar. Ele reúne informações sobre pacientes, profissionais de saúde, materiais médicos, medicamentos, prontuários, prescrições, dietas e demais dados essenciais para o funcionamento de um ambiente clínico.

O objetivo do projeto foi desenvolver as habilidades acadêmicas necessárias para criar e demonstrar o funcionamento de um banco de dados relacional em um cenário realista. Com a análise dos dados do projeto pode-se observar de forma organizada e prática, a criação de tabelas, relacionamentos, inserção de dados, consultas, atualizações e exclusões utilizando SQL. O projeto foi criado para fins acadêmicos, mas pode servir como base para sistemas mais completos.

Estrutura do Projeto
Os arquivos são organizados desta forma:
tabelas.sql: contém toda a criação das tabelas do banco.
insert.sql: inclui os comandos de inserção de dados fictícios.
select.sql: reúne exemplos de consultas simples e com JOIN.
update.sql: apresenta exemplos de atualizações e exclusões.

Como Executar
Utilize qualquer SGBD compatível com SQL (SQLite, MySQL, PostgreSQL, etc.).
O projeto foi escrito em SQLite.
Execute primeiro o arquivo tabelas.sql, que cria toda a estrutura do banco.
Depois, execute insert.sql para inserir os dados.
Utilize select.sql para testar consultas.
Por fim, execute update.sql caso queira testar atualizações e exclusões.

Descrição Geral das Tabelas
O banco de dados é composto por diversas entidades que refletem um ambiente hospitalar real:
paciente: informações básicas do paciente, como nome, data de nascimento, sexo e telefone.
endereco_paciente: dados de endereço ligados ao paciente.
dados_complementares_paciente: informações adicionais, como alergias e contato de emergência.
ala: setor ou andar onde o paciente está internado.
prontuario: histórico clínico, evolução e exames realizados.
convenio_paciente: informações sobre convênios ou planos de saúde.
profissional: lista de médicos, enfermeiros e demais profissionais.
prescricao e item_prescricao: registro de prescrições médicas e seus itens.
dieta: tipos de dietas e orientações de administração.
materiais_medicos: controle de insumos, EPIs e materiais hospitalares.
medicamento e informacoes_medicamento: detalhes sobre medicamentos, estoque, lote e validade.

Exemplos de Operações
O projeto inclui exemplos práticos de uso do banco:
Consultas filtradas com WHERE.
Consultas relacionando tabelas com JOIN.
Ordenação e limitação de resultados com LIMIT.
Atualizações de registros usando UPDATE.
Remoções específicas com DELETE.
Esses exemplos mostram como manipular o banco de maneira clara e sequencial.

Segue em anexo o DER do projeto, com as tabelas, relacionamentos e cardinalidades.

<img width="5404" height="7564" alt="image" src="https://github.com/user-attachments/assets/4e39dfba-dcb6-4e39-a11f-ee78f47112c9" />
