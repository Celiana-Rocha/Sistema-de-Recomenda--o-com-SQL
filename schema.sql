CREATE TABLE Usuario (
	UsuarioID INT PRIMARY KEY, 
    Nome VARCHAR(50) NOT NULL
);

CREATE TABLE Filme (
	FilmeID INT PRIMARY KEY, 
    Titulo VARCHAR(100) NOT NULL, 
    Genero VARCHAR(50) NOT NULL
);

CREATE TABLE Avaliacao (
	AvaliacaoID INT PRIMARY KEY,
    UsuarioID INT NOT NULL,
	FilmeID INT NOT NULL,
    Nota INT CHECK (Nota BETWEEN 1 AND 5),
    DataAvaliacao DATE NOT NULL,
    FOREIGN KEY (UsuarioID) REFERENCES Usuario(UsuarioID),
    FOREIGN KEY (FilmeID) REFERENCES Filme(FilmeID)
);

INSERT INTO Usuario (UsuarioID, Nome)
VAlUES	(1, 'Alice'), 
		(2, 'Bob'), 
        (3, 'Carol'),
        (4, 'Daniel'),
        (5, 'Evelyn'), 
        (6, 'Frank'),
        (7, 'Grace');
        
INSERT INTO Filme (FilmeID, Titulo, Genero)
VALUES		(1, 'The Matrix', 'Sci-Fi'),
            (2, 'Inception', 'Sci-Fi'),
            (3, 'Titanic', 'Romance'),
            (4, 'Avangers', 'Action'),
            (5, 'The Godfather', 'Crime'),
            (6, 'Interstellar', 'Sci-Fi'),
            (7, 'Frozen', 'Animation'),
            (8, 'The Dark Knight', 'Action'),
            (9, 'Pride and Prejudice', 'Romance'),
            (10, 'Jurassic Park', 'Adventure');
            
INSERT INTO Avaliacao (AvaliacaoID, UsuarioID, FilmeID, Nota, DataAvaliacao)
VALUES 		(1, 1, 1, 5, '2024-12-01'),
			(2, 1, 2, 4, '2024-12-02'),
			(3, 2, 1, 5, '2024-12-01'),
			(4, 2, 3, 3, '2024-12-03'),
			(5, 3, 4, 5, '2024-12-04'),
			(6, 3, 1, 4, '2024-12-02'),
			(7, 4, 5, 5, '2024-12-01'),
			(8, 4, 6, 4, '2024-12-02'),
			(9, 5, 7, 5, '2024-12-03'),
			(10, 5, 9, 4, '2024-12-03'),
			(11, 6, 8, 5, '2024-12-04'),
			(12, 6, 10, 3, '2024-12-05'),
			(13, 7, 5, 4, '2024-12-01'),
			(14, 7, 8, 5, '2024-12-02'),
			(15, 1, 6, 5, '2024-12-06'),
			(16, 2, 9, 3, '2024-12-07'),
			(17, 3, 7, 4, '2024-12-08'),
			(18, 3, 10, 5, '2024-12-09');
            


            
            
