SELECT * FROM hospede ORDER BY nome;

SELECT r.id_reserva, h.nome, r.data_entrada, r.data_saida
FROM reserva r
JOIN hospede h ON r.id_hospede = h.id_hospede;

SELECT * FROM hospedagem WHERE data_checkout IS NULL;

SELECT c.id_hospedagem, s.nome, s.valor, c.quantidade,
       (s.valor * c.quantidade) AS subtotal
FROM consumo c
JOIN servico s ON s.id_servico = c.id_servico;

SELECT q.numero, t.descricao, t.valor_diaria
FROM quarto q
JOIN tipo_quarto t ON q.id_tipo = t.id_tipo;
