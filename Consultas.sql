-- Filmes mais bem avaliados 
SELECT	F.Titulo,
		F.Genero,
		A.Nota,
        round(AVG(A.Nota), 2) AS MediaAvaliacao
        
FROM avaliacao AS A

LEFT JOIN Filme AS F
ON A.FilmeID = F.FilmeID

GROUP BY F.Titulo, F.Genero, A.Nota

ORDER BY MediaAvaliacao DESC;


-- Recomendar filmes com base na popularidade
SELECT	F.Titulo,
		F.FilmeID,
		COUNT(A.AvaliacaoID) as Quantidade
        
FROM Filme AS F

JOIN avaliacao AS A
ON F.FilmeID = A.FilmeID

GROUP BY F.Titulo, F.FilmeID
ORDER BY Quantidade DESC, F.Titulo;


-- Usuários que mais avaliaram filmes
SELECT	U.Nome,
		Count(A.UsuarioID) AS TotalAvaliacaoes
FROM usuario AS U

JOIN avaliacao AS A
ON U.UsuarioID = A.UsuarioID

GROUP BY U.Nome

ORDER BY TotalAvaliacaoes DESC;





