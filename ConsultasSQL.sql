USE [Filmes]
GO
SELECT Nome, Ano FROM Filmes
GO
SELECT Nome, Ano, Duracao FROM Filmes ORDER BY Ano
GO
SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome = 'De Volta para o Futuro'
GO
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano = 1997
GO
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano > 2000
GO
SELECT Nome, Ano, Duracao FROM Filmes WHERE Duracao < 150 AND Duracao > 100
GO
SELECT Ano, COUNT(*) AS Quantidade FROM Filmes GROUP BY Ano HAVING COUNT(*) >= 1
GO
SELECT Id, PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero = 'M'
GO
SELECT Id, PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero = 'F'
GO
SELECT Nome FROM Filmes
GO
SELECT f.Nome, g.Genero FROM FilmesGenero
INNER JOIN Filmes f On IdFilme = f.Id
INNER JOIN Generos g On IdGenero = g.id
GO
SELECT f.Nome, g.Genero FROM FilmesGenero
INNER JOIN Filmes f On IdFilme = f.Id
INNER JOIN Generos g On IdGenero = g.id
WHERE g.Genero = 'Mistério';
GO
SELECT f.Nome, a.PrimeiroNome, a.UltimoNome, Papel FROM ElencoFilme
INNER JOIN Filmes f On IdFilme = f.Id
INNER JOIN Atores a On IdAtor = a.Id