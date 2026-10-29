SELECT s.nome_suspeito, a.local_acesso, a.data_hora 
FROM tbAcessos a
INNER JOIN tbSuspeitos s ON a.id_suspeito_FK = s.id_suspeito
WHERE a.local_acesso = 'Sala do Acervo'
AND a.data_hora >= '2026-10-15 21:00:00'
AND a.data_hora <= '2026-10-15 22:00:00';