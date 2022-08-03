
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
); 

create table item_produto(
	cod_produto integer, 
	cod_materia_prima integer, 
	quantidade integer not null, 
	constraint fk_item_produto_cod_produto foreign key(cod_produto) references produto(cod_produto),
	constraint fk_item_produto_cod_materia_prima foreign key(cod_materia_prima) references materia_prima(cod_materia_prima)
); 
  

  
  