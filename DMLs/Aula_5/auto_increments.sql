-- Auto increments are a way to identify a row in a table, wich means that a
-- auto increment column has always to be a primary key of the table

create table TAB_IDENTITY (ID INT AUTO_INCREMENT, descritor VARCHAR(20), primary key (ID));