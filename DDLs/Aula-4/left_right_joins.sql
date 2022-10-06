/*
Suponha que desejemos visualizar qual cliente da nossa
loja de sucos possui cadastro de cliente, mas
nunca realizou nenhuma compra sequer.

Podemos pegar todos os registros de CPF que estão
na base de clientes, mas que ao mesmo tempo não estão
na base de notas fiscais. Para isto, utilizamos um
LEFT JOIN, tomando todos os valores de CPF e NOME
da tabela de clientes e apenas o CPF da tabela de
notas. O cliente em questão estará com o CPF da segunda
tabela com o valor NULL
*/

USE sucos_vendas;

SELECT DISTINCT A.CPF, A.NOME, B.CPF 
FROM tabela_de_clientes A
LEFT JOIN notas_fiscais B
ON A.CPF = B.CPF
WHERE B.CPF is NULL;