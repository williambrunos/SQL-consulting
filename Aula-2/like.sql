SELECT * FROM table WHERE campo LIKE 'CONDITION';

/*
Nas condições LIKE, o caractere '%' é como o coringa '*' do SELECT

WHERE campo LIKE '%string%' -> retorna os registros cujo campo possui a string
WHERE campo LIKE '%string' -> " " cujo campo termina com a string
WHERE campo LIKE 'string%'-> " " cujo campo começa com a string
*/