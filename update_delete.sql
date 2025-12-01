UPDATE hospede 
SET telefone = '11911112222' 
WHERE id_hospede = 1;

UPDATE quarto 
SET id_tipo = 3 
WHERE id_quarto = 2;

UPDATE servico 
SET valor = 35.00 
WHERE nome = 'Café da Manhã';


DELETE FROM consumo 
WHERE id_servico = 3;

DELETE FROM servico 
WHERE id_servico = 3;

DELETE FROM reserva 
WHERE id_reserva = 2;