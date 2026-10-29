SELECT s.nome_suspeito, COUNT(o.id_ocorrencia) AS total_ocorrencias
FROM tbOcorrencia o
INNER JOIN 
GROUP BY s.nome_suspeito ORDER BY total_ocorrencias DESC;