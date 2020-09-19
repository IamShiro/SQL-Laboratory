#Letra B)

#1)
select Titulo from livro where Nome_editora = 'Pearson';

#2)
select l.Titulo, la.Nome_autor from livro as l join livro_autor as la on l.Cod_livro = la.Cod_livro

#3)
select lc.Qt_copia from livro_copias as lc 
join unidade_biblioteca as unidb join livro as l on l.cod_livro = lc.cod_livro and lc.cod_unidade = unidb.cod_unidade
where l.Titulo = "Sistemas de Banco de Dados" and unidb.nome_unidade = "Sede_UFRPE";

#4)
select livro.Titulo from livro join livro_emprestimo
on livro_emprestimo.cod_livro = livro.cod_livro and livro_emprestimo.Data_emprestimo
between Cast("2020-08-01" as date) and cast("2020-09-01" as date);

#5)
select u.Nome, unidb.Nome_unidade, l.Titulo from usuario as u join unidade_biblioteca as unidb join livro as l join livro_emprestimo as le
on unidb.Cod_unidade = le.Cod_unidade and le.Cod_livro = l.Cod_livro and u.Num_cartao = le.Nr_cartao
where u.Nome like 'A%';
