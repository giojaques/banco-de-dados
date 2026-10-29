SELECT nome_suspeito, profissao
FROM tbSuspeitos
WHERE profissao LIKE '%arte%'
OR profissao LIKE '%restaurador%';