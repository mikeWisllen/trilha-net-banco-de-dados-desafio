--1

select nome, ano from Filmes;

--2

select nome, ano from Filmes 
order by ano asc;

--3

select nome, ano, duracao from Filmes 
where nome = 'De Volta para o Futuro';

--4

select nome, ano, duracao from Filmes
where ano = 1997;

--5

select nome, ano, duracao from Filmes
where ano > 2000;

--6

select nome, ano, duracao from Filmes
where duracao > 100 and duracao < 150
order by duracao asc;

--7

select ano, COUNT(*) as quantidade from Filmes
group by ano
order by quantidade DESC;

--8

select primeironome, ultimonome, genero from atores
where genero = 'M';

--9

select primeironome, ultimonome, genero from atores
where genero = 'F'
order by primeironome;

--10

select 
	f.nome as Nome,
	g.genero as Genero
	from
	filmes as f
	inner join filmesgenero as fg on f.id = fg.idfilme
	inner join generos as g on fg.idgenero = g.id;

--11

SELECT 
    f.nome AS NomeFilme,
    g.Genero AS Genero
FROM 
    filmes AS f
INNER JOIN 
    filmesgenero AS fg ON f.id = fg.idfilme
INNER JOIN 
    generos AS g ON fg.idgenero = g.id
WHERE 
    g.genero = 'Mistério';

--12

select 
	f.nome, 
	a.primeironome, 
	a.ultimonome, 
	ef.papel 
from 
	filmes as f
inner join elencofilme as ef on f.id = ef.idfilme
inner join atores as a on ef.idator = a.id;




