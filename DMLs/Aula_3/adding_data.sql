insert into <table_name> (columns)
values (values);

insert into produtos (codigo, descritor, sabor, tamanho, embalagem, preco_lista)
values ('100', 'Light 350ml - Melância', 'Melância', '350ml', 'Lata', 4.56);

-- Note: you can omiss the column names if the values order
-- respects the column order of the table

-- Inserting data from another database 

insert into produtos (codigo, descritor, embalagem, tamanho, sabor, preco_lista) 
select 
	CODIGO_DO_PRODUTO as codigo,
    NOME_DO_PRODUTO as descritor,
    EMBALAGEM as embalagem, 
    TAMANHO as tamanho,
    SABOR as sabor,
    PRECO_DE_LISTA as preco_lista
from sucos_vendas.tabela_de_produtos
where CODIGO_DO_PRODUTO not in (select codigo from vendas_sucos.produtos);