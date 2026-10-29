SELECT DISTINCT s.nome_suspeito, s.sexo, s.ficha_criminal, a.local_acesso
FROM tbSuspeitos s
INNER JOIN tbAcessos a ON s.id_suspeito = a.id_suspeito_FK
WHERE s.sexo = 'Feminino'
AND s.ficha_criminal = 1
AND a.local_acesso = 'Sala do Acervo';