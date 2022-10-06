/*
Com o comando GROUP BY, podemos agrupar nossos dados a fim de realizar
alguma função nos seus resultados de alguma coluna

- SUM(column) - agrupa as observações e faz a soma dos dados de cada observação
única na coluna 'column'
- MAX(column) - agrupa as observações e calcula o valor máximo dos dados de cada
observação única na coluna 'column'
- MIN(column) - agrupa as observações e calcula o valor mínimo dos dados de cada 
observação única na coluna 'column'
- AVG(column) - agrupa as observações e calcula a média dos valores da coluna 
'column' para cada observação única do agrupamento

OBS: ao aplicar alguma função, é uma boa prática utilizar um alias para renomear
a coluna com os dados resultantes
*/
SELECT * FROM tabela_de_clientes;

SELECT ESTADO, SUM(LIMITE_DE_CREDITO) AS LIMITE_TOTAL FROM tabela_de_clientes GROUP BY ESTADO;

SELECT * FROM tabela_de_produtos;

/* quais são os maiores preços de cada embalagem? */
SELECT EMBALAGEM, MAX(PRECO_DE_LISTA) AS MAX_PRECO FROM tabela_de_produtos GROUP BY EMBALAGEM;

/* quais as quantidades de produtos de cada embalagem? */
SELECT EMBALAGEM, COUNT(*) AS QUANTIDADE FROM tabela_de_produtos GROUP BY EMBALAGEM;

/* qual o total de limite de crédito por bairro? */
SELECT BAIRRO, SUM(LIMITE_DE_CREDITO) AS TOTAL_DE_CREDITO FROM tabela_de_clientes GROUP BY BAIRRO;

/* e o total de limite do RJ? */
SELECT BAIRRO, SUM(LIMITE_DE_CREDITO) AS TOTAL_DE_CREDITO FROM tabela_de_clientes 
WHERE CIDADE = 'Rio de Janeiro'
GROUP BY BAIRRO;

/* e agrupando estado e bairro? */
SELECT ESTADO, BAIRRO, SUM(LIMITE_DE_CREDITO) AS TOTAL_DE_CREDITO FROM tabela_de_clientes
GROUP BY ESTADO, BAIRRO;

/* ordenando um group by */
SELECT ESTADO, BAIRRO, SUM(LIMITE_DE_CREDITO) AS TOTAL_DE_CREDITO FROM tabela_de_clientes
GROUP BY ESTADO, BAIRRO
ORDER BY BAIRRO;