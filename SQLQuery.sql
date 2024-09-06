SELECT Nome,Ano FROM Filmes 

SELECT Nome,Ano,Duracao FROM Filmes 

SELECT nome, ano, duracao
FROM Filmes
WHERE nome LIKE '%De Volta para o Futuro%';

SELECT nome, ano, duracao
FROM Filmes
WHERE ano = 1997

SELECT nome, ano, duracao
FROM Filmes
WHERE ano > 2000;

SELECT nome, ano, duracao
FROM Filmes
WHERE Duracao > 100 and Duracao < 150 order by Duracao ASC;

SELECT ano, COUNT(*) AS quantidade_filmes
FROM Filmes
GROUP BY ano
ORDER BY COUNT(*) DESC;

SELECT PrimeiroNome, UltimoNome, genero from Atores where Genero like '%M%'

SELECT PrimeiroNome, UltimoNome, genero from Atores where Genero like '%F%' order by PrimeiroNome


SELECT Filmes.nome, Generos.Genero AS genero
FROM Filmes
JOIN Generos ON Filmes.Id = Generos.Id order by Nome

SELECT Filmes.nome, Generos.Genero AS genero
FROM Filmes
JOIN Generos ON Filmes.Id = Generos.Id where Genero = 'Mistério' order by Nome

SELECT 
    Filmes.nome AS NomeFilme, 
    Atores.PrimeiroNome, 
    Atores.UltimoNome, 
    ElencoFilme.Papel
FROM 
    Filmes
JOIN 
    ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme
JOIN 
    Atores ON ElencoFilme.IdAtor = Atores.Id
ORDER BY 
    NomeFilme;
