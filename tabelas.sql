BEGIN TRANSACTION;

Create table paciente (
    id_paciente INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT(500) NOT NULL,
    data_nascimento DATE,
    sexo TEXT(30),
    cpf TEXT(14),
    telefone TEXT(15),
    nome_da_mae TEXT(15),
    id_ala INTEGER,
    FOREIGN KEY (id_ala) REFERENCES ala(id_ala)
);

-----tabela endereco_paciente-----
Create table endereco_paciente (
    id_endereco_paciente INTEGER PRIMARY KEY AUTOINCREMENT,
    rua TEXT(50) NOT NULL,
    numero INTEGER NOT NULL,
    complemento TEXT(50),
    bairro TEXT(30) NOT NULL,
    cidade TEXT(30),
    estado TEXT(30),
    pais TEXT(30),
    id_paciente INTEGER,
    FOREIGN KEY (id_paciente) REFERENCES paciente(id_paciente)
);

------tabela dados_complementares_paciente------
Create table dados_complementares_paciente (
    id_dados_complementares_paciente INTEGER PRIMARY KEY AUTOINCREMENT,
    contato_emergencia TEXT(15) NOT NULL,
    nome_contato_emergencia TEXT(50) NOT NULL,
    alergias TEXT(1000),
    observacoes TEXT(1000),
    id_paciente INTEGER,
    FOREIGN KEY (id_paciente) REFERENCES paciente(id_paciente)
);

-------tabela ala------
Create table ala (
    id_ala INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT(100) NOT NULL,
    andar TEXT(30),
    capacidade TEXT(30),
    numero_leito TEXT(30)
);

------tabela prontuario------
Create table prontuario (
    id_prontuario INTEGER PRIMARY KEY AUTOINCREMENT,
    data_abertura DATATIME NOT NULL,
    historico_clinico TEXT,
    alergias TEXT,
    evolucao_clinica TEXT,
    exames_realizados TEXT,
    id_paciente INTEGER,
    FOREIGN KEY (id_paciente) REFERENCES paciente(id_paciente)
);

------tabela convenio_paciente-------
Create table convenio_paciente (    
    id_convenio_paciente INTEGER PRIMARY KEY AUTOINCREMENT,
    nome_convenio TEXT NOT NULL,
    numero_cartao_paciente TEXT(150),
    telefone_convenio TEXT(14),
    id_paciente INTEGER,
    FOREIGN KEY (id_paciente) REFERENCES paciente(id_paciente)
);

------tabela profissional-----
Create table profissional (
    id_profissional INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT(150) NOT NULL,
    registro_profissional TEXT(100) NOT NULL,
    cargo,
    turno_trabalho
);

------tabela precricao-----
Create table prescricao (
    id_prescricao INTEGER PRIMARY KEY AUTOINCREMENT,
    data_prescricao DATETIME NOT NULL,
    validade_prescricao DATETIME NOT NULL,
    observacoes TEXT,
    id_profissional INTEGER NOT NULL,
    id_paciente INTEGER NOT NULL,
    FOREIGN KEY (id_profissional) REFERENCES profissional(id_profissional),
    FOREIGN KEY (id_paciente) REFERENCES paciente(id_paciente)
);

-------tabela item_prescricao-------
Create table item_prescricao (
    id_item_prescricao INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT(100) NOT NULL,
    dose TEXT(100) NOT NULL,
    frequencia TEXT(100),
    via_administracao TEXT(100) NOT NULL,
    duracao TEXT(100),
    horario TEXT(100),
    observacoes TEXT(500),
    id_prescricao INTEGER,
    FOREIGN KEY (id_prescricao) REFERENCES prescricao(id_prescricao)
);

------tabela dieta-----
Create table dieta (
    id_dieta INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT(200) NOT NULL,
    descricao TEXT(300),
    via_de_administracao TEXT(100) NOT NULL,
    volume_ml_hora TEXT(100),
    data_inicio DATE,
    data_fim DATE,
    observacoes TEXT(500)
);

------tabela materiais_medicos------
Create table materiais_medicos (
    id_materiais_medicos INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT(200) NOT NULL,
    tipo TEXT(100),
    categoria TEXT(100),
    quantidade_estoque INTEGER,
    fabricante TEXT(100),
    lote TEXT(100),
    validade DATE
);

------tabela medicamento------
Create table medicamento (
    id_medicamento INTEGER PRIMARY KEY AUTOINCREMENT,
    nome_principio_ativo TEXT(200) NOT NULL,
    apresentacao TEXT(100),
    concentracao TEXT(100)
);

-----tabela informacoes_medicamento-----
Create table informacoes_medicamento (
    id_informacoes_medicamento INTEGER PRIMARY KEY AUTOINCREMENT,
    lote TEXT(100) NOT NULL,
    validade DATE NOT NULL,
    quantidade_estoque INTEGER,
    observacoes TEXT(500),
    id_medicamento,
    FOREIGN KEY (id_medicamento) REFERENCES medicamento(id_medicamento)
)