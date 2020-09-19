#letra A)

select Pnome from funcionario as f join departamento as d join projeto as p join trabalha_em as t
on d.Dnumero = f.Dnr and f.cpf = t.Fcpf and t.pnr = p.Projnumero
where t.horas > 15 and p.Projnome = "Informatização";

#letra B)
select Pnome from funcionario as f join dependente as d
on d.Fcpf = f.Cpf and d.Sexo = f.Sexo;

#letra C)
select pnome from funcionario where cpf_supervisor=
(select Cpf from funcionario where Pnome='Jennifer' and unome='Souza');

#letra D)
update departamento set cpf_gerente='12345678966' and data_inicio_gerente='2020-09-07' where Dnumero=5;

#letra E)
update trabalha_em set horas=5.0 where Fcpf = '99988777767' and pnr=10;

#letra F)
update funcionario set salario=salario*0.9 where dnr=
(select Dnumero from departamento where departamento.dnome='Administração');

#letra G)
delete from departamento where Dnome = "Matriz";

#letra H)
update funcionario set Cpf_supervisor = "94377554355" where Cpf = "99988777767";
