create database BD_Startup;
use bd_startup;

create table startup
(
	id_startup int primary key,
    	nome_startup varchar(50) unique

) engine = InnoDB;


create table linguagem_programacao
(
	id_linguagem int primary key,
    	linguagem varchar(10) unique

) engine = InnoDB;

create table programador 
(
	id_programador int primary key,
    	id_startup int,
    	nome_programador varchar(30),
    
    	foreign key (id_startup) references startup (id_startup)
    
) engine = InnoDB; -- para não bugar a foreign key

create table programador_linguagem 
(
	id_programador int,
    	id_linguagem int,

	foreign key (id_programador) references programador (id_programador),
    	foreign key (id_linguagem) references linguagem_programacao (id_linguagem)
    
) engine = InnoDB;

insert into startup values 
(1, "Pitang"),
(2, "Tempest"),
(3, "Accenture"),
(4, "CESAR");

insert into linguagem_programacao values 
(1, "C++"), -- 1
(2, "Java"),
(3, "Python"),
(4, "Dart"),
(5, "C#"),
(6, "PHP");

insert into programador values 
(1, 2, "Pablo"), -- (id_programador, id_startup, nome_programador)
(2, 3, "Carlos"),
(3, 1, "Amanda"),
(4, 1, "Danilo"),
(5, 1, "João"),
(6, 1, "Spicollys"),
(7, 1, "Lucas"),
(8, 4, "Larissa");

insert into programador_linguagem values 
(1, 3), -- (id_programador, id_linguagem)
(1, 2),
(1, 4),
(2, 5),
(4, 3),
(4, 2),
(5, 3),
(5, 6),
(6, 3),
(6, 2),
(6, 4),
(6, 6);
