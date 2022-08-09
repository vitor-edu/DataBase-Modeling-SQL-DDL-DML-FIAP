create table produto(
	cod_produto integer constraint pk_produto_cod_produto primary key,
	produto varchar(20) constraint uk_produto_produto unique
	-- constraint pk_produto_cod_produto primary key(cod_produto)  
); 

create table categoria(
	cod_categoria integer constraint pk_categoria_cod_categoria primary key,
	cod_produto integer constraint fk_categoria_cod_produto references produto(cod_produto),
	categoria varchar(20) constraint uk_categoria_categoria unique 
); 

create table materia_prima(
	cod_materia_prima integer constraint pk_materia_prima_cod_materia_prima primary key,
	materia_prima varchar(20) constraint fk_materia_prima unique
	-- constraint pk_materia_prima_cod_materia_prima primary key(cod_materia_prima)
);

create table item_produto(
	cod_produto integer, 
	cod_materia_prima integer, 
	quantidade integer not null, 
	constraint fk_item_produto_cod_produto foreign key(cod_produto) references produto(cod_produto),
	constraint fk_item_produto_cod_materia_prima foreign key(cod_materia_prima) references materia_prima(cod_materia_prima)
); 


insert into produto values(11, 'doce de leite'); 
insert into produto values(12, 'leite em pó'); 
insert into produto values(13, 'nescal'); 
insert into produto values(14, 'suco laranja'); 
insert into produto values(15, 'manga')

insert into categoria values(110,11,'doces');
insert into categoria values(120,12,'precivel');
insert into categoria values(130,13,'matinal');
insert into categoria values(140,14,'derivado');
insert into categoria values(150,15,'hort-frut')

insert into materia_prima values(01,'gordura');
insert into materia_prima values(02,'soro_leite');
insert into materia_prima values(03,'cacau');
insert into materia_prima values(04,'laranja');
insert into materia_prima values(05,'indefinido')

insert into item_produto values(11,01,300);
insert into item_produto values(12,02,348);
insert into item_produto values(13,03,344);
insert into item_produto values(14,04,455);
insert into item_produto values(15,05,200)





