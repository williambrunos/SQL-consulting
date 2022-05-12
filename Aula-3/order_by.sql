/*
Ordenamos dados de forma ascendente, tanto dados numéricos quanto textos
Podemos escolher mais de um campo para ordenar os valores
*/

/* query de ordem crescente */
SELECT column_names FROM table_name ORDER BY columns_to_build_order_rule;

/* query de ordem decrescente */
SELECT column_names FROM table_name ORDER BY columns_to_build_order_rule DESC;

SELECT * FROM tabela_de_produtos ORDER BY TAMANHO, PRECO_DE_LISTA;

SELECT * FROM tabela_de_produtos ORDER BY TAMANHO, PRECO_DE_LISTA DESC;

SELECT * FROM tabela_de_produtos ORDER BY TAMANHO ASC, PRECO_DE_LISTA DESC;