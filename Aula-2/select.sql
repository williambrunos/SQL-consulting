USE schema;

/* SELECT everything FROM table */
SELECT * FROM table_name;

/* SELECT everything FROM table WHERE condition = True */
SELECT * FROM table_name WHERE condition;

/* 
obs: o campo de condition não precisa ser necessariamente chave primária.
No entanto, consultas com campos que não sejam índices ocorrem de forma
mais lenta.
*/

/*
Tome cuidado com selects com valores float ou double, é preferível utilizar
o comando between ao invés de comparadores de (des) igualdade.
*/