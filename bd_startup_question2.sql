-- I

select nome_programador, nome_startup from programador, startup
where programador.id_startup = startup.id_startup order by nome_programador;

select nome_programador, nome_startup from programador as p
inner join startup as s
on p.id_startup = s.id_startup order by nome_programador;

select nome_programador, nome_startup from programador
natural join startup
where programador.id_startup = startup.id_startup order by nome_programador;

-- II

select p.nome_programador, l.linguagem from programador as p
inner join programador_linguagem as pl
on p.id_programador = pl.id_programador
inner join linguagem_programacao as l
on l.id_linguagem = pl.id_linguagem order by p.nome_programador; 

-- III

select p.nome_programador, lp.linguagem
from programador as p
left join programador_linguagem as pl
on p.id_programador = pl.id_programador
left join linguagem_programacao as lp
on pl.id_linguagem = lp.id_linguagem;

-- IV

select p.nome_programador from programador as p 
where p.id_programador not in (select id_programador from programador_linguagem);

-- V

select p.nome_programador, s.nome_startup from programador as p
right join startup as s
on p.id_startup = s.id_startup;

-- VI

select nome_startup from startup as s 
where s.id_startup not in (select s.id_startup from startup as s 
	inner join programador as p 
	on s.id_startup = p.id_startup);
    
    


