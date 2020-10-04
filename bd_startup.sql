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
(1, "Startup 1"),
(2, "Startup 2"),
(3, "Startup 3"),
(4, "Startup 4"),
(5, "Startup 5"),
(6, "Startup 6");

insert into linguagem_programacao values 
(1, "Python"), -- 1
(2, "PHP"),
(3, "Java"),
(4, "Swift"),
(5, "C#"),
(6, "JavaScript");

insert into programador values 
(1, 1, "João"), -- (id_programador, id_startup, nome_programador)
(2, 2, "Paula"),
(3, 3, "Renata"),
(4, 4, "Felipe"),
(5, 4, "Ana"),
(6, 1, "Alexandre");

insert into programador_linguagem values 
(1,1), -- João
(1,2),
(2,3), -- Paula
(3,4), -- Renata
(3,5),
(4,5); -- Felipe







