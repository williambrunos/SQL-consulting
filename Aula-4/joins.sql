/*
Possibilidade de unir tabelas a partir de campos em comum

INNER JOIN:

Seleciona apenas os registros com campos selecionados em comum

LEFT JOIN:

Seleciona todos os registros da tabela da esquerda e apenas
os registros que tiverem correspondência na tabela da direita.

Os dados que não possuírem correspondência de alguma das tabelas
virão como NULL.

RIGHT JOIN:

Seleciona todos os registros da tabela da direita e apenas os
registros que tiverem campos correspondentes na tabela da
esquerda.

Os dados que não possuírem correspondência de alguma das tabelas
virão como NULL.

FULL JOIN

O FULL JOIN retorna uma união entre as tabelas. Os dados que não
possuírem correspondência ficarão com valor NULL.

CROSS JOIN:

Retorna o produto cartesiano entre todos os registros possíveis
das duas tabelas.

Diferentemente dos outros JOINs, este não necessita de uma sentença
que afirma que deve ser aplicado um CROSS JOIN, basta apenas uma
vírgula separando as duas tabelas logo após o "FROM".
*/

-- INNER JOIN
SELECT * FROM tabela_de_vendedores A
INNER JOIN notas_fiscais B
ON A.matricula = B.matricula;

/*
Perceba que o bloco de código:

FROM tabela_de_vendedores A
INNER JOIN notas_fiscais B
ON A.matricula = B.matricula;

gera uma nova tabela. Desta forma, podemos
utilizar isto para formar comandos SQL
mais avançados utilizando JOINs e GROUP BY
*/

SELECT A.MATRICULA, A.NOME, COUNT(*) AS CONTAGEM_NOTAS
FROM tabela_de_vendedores A
INNER JOIN notas_fiscais B
ON A.matricula = B.matricula
GROUP BY A.MATRICULA;