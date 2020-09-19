create database Biblioteca;
use Biblioteca;

create table livro(
	Cod_livro varchar(20) not null,
    	Titulo varchar(50) not null,
    	Nome_editora varchar(50) not null,
    	primary key(Cod_livro));

create table livro_autor(
	Cod_livro varchar(20) not null,
    	Nome_autor varchar(50) not null,
    	primary key(Cod_livro, Nome_autor));
    
create table editora(
	Nome varchar(50) not null,
    	Endereco varchar(50),
    	Telefone char(11),
    	primary key(Nome));
    
create table livro_copias(
	Cod_livro varchar(20) not null,
    	Cod_unidade varchar(3) not null,
    	Qt_copia varchar(3) not null,
    	primary key(Cod_livro, Cod_unidade));
    
create table livro_emprestimo(
	Cod_livro varchar(20) not null,
    	Cod_unidade varchar(3) not null,
    	Nr_cartao varchar(11) not null,
    	Data_emprestimo date not null,
    	Data_devoluçao date not null,
    	primary key(Cod_livro, Cod_unidade, Nr_cartao));
    
create table unidade_biblioteca(
	Cod_unidade varchar(3) not null,
    	Nome_unidade varchar(50) not null,
    	Endereco varchar(50) not null,
    	primary key(Cod_unidade));
    
create table usuario(
	Num_cartao varchar(11) not null,
    	Nome varchar(50) not null,
    	Endereco varchar(50) not null,
    	Telefone char(11) not null,
    	primary key(Num_cartao));
    
insert into livro values
	('123','Sistemas de Banco de Dados','Pearson'),
	('321','blablabla2','Pearson'),
	('50','blablabla3','Panini'),
    	('51','blablabla4','JBC');

insert into livro_autor values
	('123','Carlos'),
    	('321','Ernesto'),
    	('50','Pablo'),
    	('51','Josefina');
    
insert into editora values
	('Pearson','Av. Abdias de Carvalho, 3','81999999999'),
    	('Panini','Av. Caxangá, 40','73123123123'),
    	('JBC','Rua Poeta Edmundo Souza Filho, 45','21343434343');
    
insert into livro_copias values
	('123','01','5'),
    	('321','01','3'),
    	('50','02','1'),
    	('51','02','9');
    
insert into livro_emprestimo values
	('123','01','11111111111','2020-08-18','2020-09-18'),
    	('123','01','22222222222','2020-09-10','2020-10-10'),
    	('50','02','31313131313','2020-08-30','2020-09-30'),
    	('51','02','13131313131','2020-02-12','2020-03-12');
    
insert into unidade_biblioteca values
	('01','SEDE_UFRPE','R ficticia 1'),
    	('02','Biblioteca setorial','R ficticia 2');
    
insert into usuario values
	('11111111111','Victor','R. Piracicaba','81966668888'),
    	('22222222222','Ana','R. Piracicaba','81933334444'),
    	('31313131313','Messias','R. Itabuna','81922221212'),
    	('13131313131','Sirlene','R. São Paulo','81955555555');
    
alter table livro add foreign key(Nome_editora) references editora(Nome);
alter table livro_autor add foreign key(Cod_livro) references livro(Cod_livro);
alter table livro_copias add foreign key(Cod_livro) references livro(Cod_livro);
alter table livro_copias add foreign key(Cod_unidade) references unidade_biblioteca(Cod_unidade);
alter table livro_emprestimo add foreign key(Cod_livro) references livro(Cod_livro);
alter table livro_emprestimo add foreign key(Cod_unidade) references unidade_biblioteca(Cod_unidade);
alter table livro_emprestimo add foreign key(Nr_cartao) references usuario(Nr_cartao);

