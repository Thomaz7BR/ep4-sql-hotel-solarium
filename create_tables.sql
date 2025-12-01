CREATE SCHEMA IF NOT EXISTS public;

CREATE TABLE hospede (
    id_hospede SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(120) NOT NULL UNIQUE,
    telefone VARCHAR(20),
    cpf VARCHAR(14) UNIQUE
);

CREATE TABLE tipo_quarto (
    id_tipo SERIAL PRIMARY KEY,
    descricao VARCHAR(50) NOT NULL,
    valor_diaria NUMERIC(10,2) NOT NULL
);

CREATE TABLE quarto (
    id_quarto SERIAL PRIMARY KEY,
    numero VARCHAR(10) NOT NULL,
    id_tipo INT NOT NULL,
    FOREIGN KEY (id_tipo) REFERENCES tipo_quarto(id_tipo)
);

CREATE TABLE reserva (
    id_reserva SERIAL PRIMARY KEY,
    id_hospede INT NOT NULL,
    data_entrada DATE NOT NULL,
    data_saida DATE NOT NULL,
    id_quarto INT NOT NULL,
    FOREIGN KEY (id_hospede) REFERENCES hospede(id_hospede),
    FOREIGN KEY (id_quarto) REFERENCES quarto(id_quarto)
);

CREATE TABLE hospedagem (
    id_hospedagem SERIAL PRIMARY KEY,
    id_reserva INT NOT NULL,
    data_checkin TIMESTAMP NOT NULL,
    data_checkout TIMESTAMP,
    FOREIGN KEY (id_reserva) REFERENCES reserva(id_reserva)
);

CREATE TABLE servico (
    id_servico SERIAL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    valor NUMERIC(10,2) NOT NULL
);

CREATE TABLE consumo (
    id_hospedagem INT NOT NULL,
    id_servico INT NOT NULL,
    quantidade INT NOT NULL DEFAULT 1,
    PRIMARY KEY (id_hospedagem, id_servico),
    FOREIGN KEY (id_hospedagem) REFERENCES hospedagem(id_hospedagem),
    FOREIGN KEY (id_servico) REFERENCES servico(id_servico)
);

CREATE TABLE pagamento (
    id_pagamento SERIAL PRIMARY KEY,
    id_hospedagem INT NOT NULL,
    valor_total NUMERIC(10,2) NOT NULL,
    metodo VARCHAR(30),
    data_pagamento DATE NOT NULL,
    FOREIGN KEY (id_hospedagem) REFERENCES hospedagem(id_hospedagem)
);
