-- 1 - Buscar o nome e ano dos filmes
Select nome, ano
from filmes;

-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
Select nome, ano, Duracao
from filmes
Order by Ano;

-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
Select nome, ano, Duracao
from filmes
where
nome = 'De volta para o futuro';

-- 4 - Buscar os filmes lançados em 1997
Select nome, ano, Duracao
from filmes
where
ano = 1997;

-- 5 Filmes lançados após o ano 2000
Select nome, ano, Duracao
from filmes
where
ano > 2000;

-- 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
Select nome, ano, Duracao
from filmes
where
duracao > 100 and duracao < 150
order by duracao;

-- 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
Select ano,count(*) as Lancamentos
from filmes
group by ano
order by count(*) desc;

-- 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
Select *
from
Atores
where
Genero = 'M';

-- 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
Select *
from
Atores
where
Genero = 'F'
order by PrimeiroNome;

-- 10 - Buscar o nome do filme e o gênero
Select f.nome, g.Genero
from
Filmes F
inner join FilmesGenero FG on FG.IdFilme = F.id
inner join Generos G on g.id = fg.IdGenero;

-- 11 - Buscar o nome do filme e o gênero do tipo "Mistério"
Select f.nome, g.Genero
from
Filmes F
inner join FilmesGenero FG on FG.IdFilme = F.id
inner join Generos G on g.id = fg.IdGenero
where
G.Genero = 'Mistério';

-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
Select f.Nome, a.PrimeiroNome, a.UltimoNome, ef.Papel
from
Filmes F
inner join ElencoFilme EF on ef.IdFilme = f.id
inner join Atores A on a.Id = ef.IdAtor;