SELECT DISTINCT s.id_suspeito, s.nome_suspeito, s.sexo, s.profissao, s.altura, b.valor, a.data_hora
FROM tbSuspeitos s
INNER JOIN tbAcessos a ON s.id_suspeito = a.id_suspeito_FK
INNER JOIN tbDadosBancarios b ON s.id_suspeito = b.id_suspeito_FK
WHERE a.local_acesso = 'Sala do Acervo'
AND a.data_hora >= '2026-10-15 21:00:00'
AND a.data_hora <= '2026-10-15 22:00:00'
AND s.sexo = 'Feminino'
AND s.altura >= 1.70
AND s.ficha_criminal = 1
AND b.valor > 20000;