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

