SELECT o.data_hora_ocorrencia, o.tipo_ocorrencia, o.local_ocorrencia, s.nome_suspeito
FROM tbOcorrencia o
INNER JOIN tbSuspeitos s ON o.id_suspeito_FK = s.id_suspeito
WHERE o.local_ocorrencia = 'Painel de Energia'
AND o.data_hora_ocorrencia LIKE '2026-10-15%';