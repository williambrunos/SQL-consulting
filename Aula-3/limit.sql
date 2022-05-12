/*
O comando LIMIT retorna n registros da query
*/
SELECT column_names FROM table_name LIMIT n; 

/*
Ou então selecionamos uma amostra de dados

SELECT column_names FROM table_name LIMIT n, m

A query acima retorna m registros com campos de column_names
da tabela após a n-ésima posição (contando a partir do 1)
*/
SELECT * FROM tabela_de_produtos;

SELECT * FROM tabela_de_produtos LIMIT 5;

SELECT * FROM tabela_de_produtos LIMIT 3, 5; /* Toma os 5 registros a partir da 4º posição */