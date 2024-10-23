-- Buscar nome e ano dos filmes
SELECT Nome, Ano FROM Filmes

-- Buscar nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT Nome, Ano FROM Filmes ORDER BY Ano ASC

-- Buscar filme De Volta pro Futuro, trazendo nome, ano e duração
SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome = 'De Volta para o Futuro'

-- Buscar filmes lançados em 1997
SELECT * FROM Filmes WHERE Ano = '1997'

-- Buscar filmes lançados após o ano 2000
SELECT * FROM Filmes WHERE Ano > 2000

-- Buscar filmes com duração maior que 100 e menor que 150, ordenando pela duração em ordem crescente
SELECT * FROM Filmes WHERE Duracao BETWEEN 100 AND 150 ORDER BY Duracao ASC

-- Buscar quantidade de filmes lançados no ano, agrupando por ano, ordenando pela duração
-- em ordem decrescente
SELECT Ano, COUNT(Id) AS Quantidade FROM Filmes GROUP BY Ano ORDER BY MAX(Duracao) DESC

-- Buscar Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT * FROM Atores WHERE Genero = 'M'

-- Buscar Atores de gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT * FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome

-- Buscar nome do filme e gênero
SELECT Id, Nome FROM Filmes INNER JOIN FilmesGenero ON 
WHERE FilmesGenero.IdFilme = Filmes.Id


