update 
    <table_name>
set
    <col_name> = <value>
where
    <condition>;

-- Updating unique column from a table 
update 
	produtos 
set preco_lista=10
where codigo = '1000889';

-- Updating multiple columns from a table
update 
	clientes 
set 
	endereco='R. Jorge Emílio 23',
    bairro='Santo Amaro',
    cidade='São Paulo',
    estado='SP',
    cep='8833223'
where cpf = '19290992743';