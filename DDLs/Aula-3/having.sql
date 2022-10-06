/*
O comando HAVING é utilizado quando queremos aplicar uma condição após
o agrupamento de dados de uma tabela. Esta condição filtra os elementos
advindos do agrupamento com select.

Ex: 

SELECT X, SUM(Y)
FROM table GROUP BY X 
HAVING SUM(Y) > 6;
*/

SELECT field_names FROM table GROUP BY column_name HAVING CONDITION;