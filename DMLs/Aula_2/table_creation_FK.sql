-- In order to add a foreign key to a table, we need to create the table first, and 
-- after that add a constraint of a foreign key to it.

create table vendas (
	numero varchar(5) not null,
	data_venda date,
    imposto double,
    cpf varchar(11) not null,
    primary key (numero)
);

-- Adding "cpf" of clientes as a foreign key of vendas
alter table vendas add constraint FK_clientes
foreign key (cpf) references clientes (cpf);

-- Adding "matricula" of vendedores as foreign key of vendas
alter table vendas add constraint FK_vendedores
foreign key (matricula) references vendedores (matricula);