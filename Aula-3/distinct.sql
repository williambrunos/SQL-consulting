/* 
O comando DISTINCT irá retornar apenas os registros com valores distintos
Combinações únicas de linhas
*/

SELECT DISTINCT EMBALAGEM, TAMANHO FROM tabela_de_produtos;

SELECT DISTINCT EMBALAGEM, TAMANHO, SABOR FROM tabela_de_produtos
WHERE SABOR = 'Laranja';

SELECT DISTINCT BAIRRO FROM tabela_de_clientes
WHERE CIDADE = 'Rio de Janeiro';