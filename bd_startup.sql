create database BD_Startup;
use bd_startup;

create table startup
(
	id_startup int primary key auto_increment,
    	nome_startup varchar(50) unique

) engine = InnoDB;


create table linguagem_programacao
(
	id_linguagem int primary key auto_increment,
    	linguagem varchar(10) unique

) engine = InnoDB;

create table programador 
(
	id_programador int primary key auto_increment,
    	id_startup int,
    	nome_programador varchar(30),
    
    	foreign key (id_startup) references startup (id_startup)
    
) engine = InnoDB;

create table programador_linguagem 
(
	id_programador int,
    	id_startup int,

	foreign key (id_programador) references programador (id_programador),
    	foreign key (id_startup) references startup (id_startup)
    
) engine = InnoDB;

insert into startup (nome_startup) values 
("Pitang"),
("Tempest"),
("Accenture");

insert into linguagem_programacao (linguagem) values 
("C++"),
("Java"),
("Python"),
("Dart");

insert into programador values 
(1,2,"Pablo"),
(2,3,"Carlos"),
(3,1,"Amanda");

insert into programador_linguagem values 
(2,3),
(1,2),
(3,1);
