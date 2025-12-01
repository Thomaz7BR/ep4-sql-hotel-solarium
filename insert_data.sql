INSERT INTO hospede (nome, email, telefone, cpf) VALUES
('João Silva', 'joao@gmail.com', '11999998888', '123.456.789-00'),
('Maria Souza', 'maria@hotmail.com', '21988887777', '987.654.321-00');

INSERT INTO tipo_quarto (descricao, valor_diaria) VALUES
('Solteiro', 150.00),
('Casal', 250.00),
('Luxo', 400.00);

INSERT INTO quarto (numero, id_tipo) VALUES
('101', 1),
('202', 2),
('303', 3);

INSERT INTO reserva (id_hospede, data_entrada, data_saida, id_quarto) VALUES
(1, '2025-01-10', '2025-01-15', 2),
(2, '2025-02-01', '2025-02-05', 1);

INSERT INTO hospedagem (id_reserva, data_checkin, data_checkout) VALUES
(1, '2025-01-10 14:00:00', '2025-01-15 11:00:00'),
(2, '2025-02-01 15:00:00', NULL);

INSERT INTO servico (nome, valor) VALUES
('Café da Manhã', 30.00),
('Lavanderia', 15.00),
('Spa', 150.00);

INSERT INTO consumo (id_hospedagem, id_servico, quantidade) VALUES
(1, 1, 3),
(1, 2, 1),
(2, 3, 2);

INSERT INTO pagamento (id_hospedagem, valor_total, metodo, data_pagamento) VALUES
(1, 850.00, 'Cartão', '2025-01-15');
