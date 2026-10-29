SELECT id_suspeito_FK, valor, descricao
FROM tbDadosBancarios
WHERE valor > 20000
AND saque_deposito = 1;