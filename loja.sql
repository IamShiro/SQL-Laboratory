create database loja;
use loja;


create table cliente (

	CodCli 		int primary key auto_increment, 
	Nome     	varchar(20), 
	Email  		varchar(20), 
	Telefone 	char(9)
    
) engine = InnoDB;



create table produto(

	CodProd 	int primary key auto_increment, 
	Descricao 	text
    
) engine = InnoDB;

create table pedido(

	NumPedido 	int primary key auto_increment, 
	CodCli 		int not null, #foreign key
	`Data` 		date
	
) engine = InnoDB;

create table item_pedido(

	NumItem 		int primary key auto_increment, 
    NumPedido 		int not null, #foreign key
	CodProd 		int not null, #foreign key
    Quantidade 		int not null,
    PreçoUnitário 	float(7,2)

) engine = InnoDB;

alter table item_pedido add foreign key (NumPedido) references pedido(NumPedido) on delete cascade;
alter table item_pedido add foreign key (CodProd) references produto(CodProd) on delete restrict on update cascade;

insert into produto (Descricao) values 
("Apenas para teste"),
("Apenas para teste");

insert into cliente values
(default,"Vitória","vitoria@","995033356"),
(default,"Random","random@","997144191");

insert into pedido values
(default,1,"2020-09-19"),
(default,2,"2020-09-19");

insert into item_pedido values
(1,2,1,4,80),
(2,1,1,3,60);
