-- a)

SELECT d.Dnome, COUNT(f.Cpf), AVG(f.salario) as 'Media Salarial'
FROM funcionario as f
JOIN departamento as d
ON d.Dnumero = f.dnr
GROUP BY dnr
HAVING AVG(Salario) > 30000;

-- b)

SELECT d.dnome, COUNT(f.Cpf)
FROM funcionario as f
JOIN departamento as d
ON d.Dnumero = f.Dnr
WHERE f.Salario> 30000 AND f.Sexo = 'M'
GROUP BY dnr;

-- c)

select Pnome from funcionario
where Dnr = (select Dnr from funcionario where 
            salario = (select max(salario) from funcionario));

-- d)

select Pnome, cpf_supervisor from funcionario 
where cpf_supervisor in (select cpf from funcionario where cpf_supervisor = 88866555576);

-- e)

select Pnome from funcionario where salario >= (select min(salario) from funcionario) + 10000;
 
-- f)

create view view_name as
select d.Dnome, f.Pnome, f.salario from departamento as d
inner join funcionario as f
on d.cpf_gerente = f.cpf;

-- select * from view_name;
-- drop view view_name;
 
-- g)

-- dank god
create view view_name as
select f.Pnome, (select f2.pnome from funcionario as f2 where f.cpf_supervisor = f2.cpf) as nome_supervisor, f.salario from funcionario as f
inner join departamento as d
on d.Dnumero = f.dnr where Dnome = "Pesquisa"; 

-- h)

create view view_name as
select p.Projnome, d.Dnome, count(f.cpf), sum(t.horas) from projeto as p
left join departamento as d
on d.Dnumero = p.Dnum
inner join funcionario as f
on f.dnr = d.Dnumero
inner join trabalha_em as t
on t.Fcpf = f.cpf 
group by Projnome;

 
-- i)

create view view_name as
select p.Projnome, d.Dnome, count(f.cpf), sum(t.horas) from projeto as p
left join departamento as d
on d.Dnumero = p.Dnum
inner join funcionario as f
on f.dnr = d.Dnumero
inner join trabalha_em as t
on t.Fcpf = f.cpf 
group by Projnome having count(f.cpf) > 1;

-- j)

-- SELECT * FROM Resumo_Departamento;

select dnr, count(cpf), sum(salario), AVG(salario) from
funcionario group by dnr;

-- SELECT Num_dept, Num_func FROM Resumo_Departamento WHERE Total_sal > 100000;

select dnr, count(cpf) from funcionario group by dnr having sum(salario) > 100000;

-- SELECT Num_dept, Media_sal FROM Resumo_Departamento
-- WHERE Num_func > ( SELECT Num_func FROM Resumo_Departamento WHERE Num_dept=4);

select dnr, avg(salario) from funcionario 
group by dnr
having count(cpf) > (select count(*) from funcionario where dnr = 4);

-- l)

-- faz uma exceção dos salarios dos gerentes serem maiores que dos funcionarios normais
create assertion var
check (exists select salario from funcionario where cpf not in (select cpf_gerente from departamento) and salario in
       (select f.salario from departamento as d inner join funcionario as f on d.cpf_gerente = f.cpf);                     
 
-- m)

-- realiza um aumento em 35% no salário do funcionario atualizado
create trigger aumento after update
on funcionario
for each row
set funcionario.salario = (funcionario * 1.35);




