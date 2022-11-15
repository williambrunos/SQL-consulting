-- To create a database or schema we use the following code

create {database | schema} [if not exists] db_name
    [create_specification] ...

create_specification: 
    [default] character set [=] charset_name
|   [default] collate [=] collate_name
| default encryption [=] {'Y' | 'N'}

-- To delete a database or schema we use the following code 

drop {database | schema} [if exists] db_name