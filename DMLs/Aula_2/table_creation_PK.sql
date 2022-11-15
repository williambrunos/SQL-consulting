-- To create tables, we use a code like

create [temporary] table [if not exists] table_name
    (create_definition, ...)
    [table_options]
    [partition_options]

create [temporary] table [if not exists] table_name
    [(create_definition, ...)]
    [table_options]
    [partition_options]
    [ignore | replace]
    [as] query_expression

create [temporary] table [if not exists] table_name
    {like old_table_name | (like old_table_name)}

-- To set primary keys (PKs) in a table, we use codes like

create table <table_name> (
    [<column_names, ...]
    primary key (<columns_to_compose_primary_key>)
)

-- obs: primary keys must be specified not null

-- Some examples of PKs usage:

create table produtos (
	codigo varchar(10) not null,
    descritor varchar(100),
    sabor varchar(50),
    tamanho varchar(50),
    embalagem varchar(50),
    preco_lista float,
    primary key (codigo)
);

create table vendedores (
	matricula varchar(5) not null,
    nome varchar(100),
    bairro varchar(50),
    comissao float,
    data_admissao date,
    ferias boolean,
    primary key (matricula)
);