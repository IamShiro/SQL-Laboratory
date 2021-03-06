create database matricula_pablo;
use matricula_pablo;

create table ALUNO
(
    cpf bigint unique,
    nome varchar(40),
    curso varchar(40),
    datanasc date

);

create table DISCIPLINA
(
    num_disciplina int unique,
    Dnome varchar(40),
    dept varchar(30)

);

create table INSCRICAO
(
    cpf bigint,
    num_disciplina int,
    semestre tinyint,
    nota tinyint
    

);

create table LIVRO_ADOTADO
(
    num_disciplina int,
    semestre tinyint,
    isbn_livro int
   
);

create table LIVRO
(
    isbn_livro int unique,
    titulo_livro varchar(40),
    editora varchar(20),
    autor varchar(30)

);

insert into aluno (cpf,nome,curso,datanasc) values
(79949514818,"Matheus","Bacharelado em Ciências Biologicas","1984-12-08"),
(68798465115,"Leila","Bacharelado em Matemática","2000-09-10"),
(98794987815,"Carlos","Bacharelado em Ciência da Computação","1994-03-27");

insert into disciplina (num_disciplina,Dnome,dept) values
(50,"Psicologia Interdisciplinar","Departamento de Humanas"),
(10,"Armazenamento de Dados","Departamente de Computação"),
(1,"Cálculo I","Departamento de Matemática");


insert into inscricao (cpf,num_disciplina,semestre,nota) values
(68798465115,1,1,9),
(98794987815,10,5,7),
(79949514818,50,2,6);

insert into livro_adotado (num_disciplina,semestre,isbn_livro) values
(1,1,7658475278567),
(10,5,7874278567681),
(50,2,7424478678678);

insert into livro (isbn_livro,titulo_livro,editora,autor) values
(7658475278567,"Hamilton Calculo I","Cultura","Hamilton"),
(7874278567681,"Introdução a Banco de dados","Leya","Roberta Macedo"),
(7424478678678,"O Comportamente Humano","Saraiva","Sirlene Nascimento");

alter table incricao ADD FOREIGN KEY(cpf) REFERENCES aluno(cpf);
alter table incricao ADD FOREIGN KEY(num_disciplina) REFERENCES disciplina(num_disciplina);
alter table livro_adotado ADD FOREIGN KEY(num_disciplina) REFERENCES disciplina(num_disciplina);
alter table livro_adotado ADD FOREIGN KEY(isbn_livro) REFERENCES livro(isbn_livro);
