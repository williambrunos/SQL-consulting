/*
O comando CASE é utilizado para realizar constatações dentro de tabelas com SQL.
Os valores destas constatações serão armazenados em uma nova coluna, a qual
podemos utilizar um alias para renomeá-la.

CASE
    WHEN <CONDITION> THEN <VALUE>
    .
    .
    .
END AS ALIAS

OBS: a condição entra em apenas um critério WHEN (ou ELSE)
*/

USE sucos_vendas;

SELECT NOME, DATA_DE_NASCIMENTO,
CASE
	WHEN YEAR(DATA_DE_NASCIMENTO) < 1990 THEN 'Velho'
    WHEN YEAR(DATA_DE_NASCIMENTO) < 1995 THEN 'Nem tão velho'
    ELSE 'Jovens'
END AS FAIXA_ETARIA
FROM tabela_de_clientes;