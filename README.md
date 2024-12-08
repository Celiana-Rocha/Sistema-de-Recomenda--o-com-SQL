<a href="https://github.com/Celiana-Rocha"><img width=100% src="https://capsule-render.vercel.app/api?type=waving&color=483d8b&height=180&section=header&text=Sistema+de+Recomendação+de+Filmes+com+SQL&fontSize=30&fontColor=6a5acd&animation=twinkling&fontAlignY=35"/></a>

Este projeto implementa um sistema de recomendação de filmes baseado em SQL. 

## Objetivo 💡
📌Criar um banco de dados simples que:
- Registra filmes, gêneros e avaliações de usuários.
- Gera recomendações baseadas em gêneros e histórico do usuário.

📌Fazer consultas SQL dentro do banco de dados em busca dos seguintes resultados:
- Filmes mais bem avaliados.
- Recomendar filmes com base na popularidade.
- Usuários que mais avaliaram filmes.

## Estrutura do Projeto 👷‍♀️
- `planilhas`: resultados das quereis feitas.
- `schema.sql`: Criação das tabelas (`Usuario`, `Filme`, `Avaliacao`).
- `queries.sql`: Consultas avançadas, incluindo recomendações e análises.
- `melhorias.md`: Sugestões para expansão do sistema.

## Como Executar 🤓
1. **Configuração do Banco de Dados:**
   - Use uma ferramenta como MySQL, PostgreSQL ou SQLite.
   - Execute o script `schema.sql` para criar as tabelas.
   - Execute `data_inserts.sql` para preencher o banco de dados.

2. **Executar Consultas:**
   - Use qualquer cliente SQL (como DBeaver ou MySQL Workbench).
   - Importe e rode o conteúdo de `queries.sql`.

3. **Resultados:**
   - Consulte filmes recomendados com base no histórico de avaliações de usuários.

## Resultado de Consultas SQL 🚀

- **Filmes mais bem avaliados:**
  ```sql
  SELECT	F.Titulo,
		      F.Genero,
		      A.Nota,
          round(AVG(A.Nota), 2) AS MediaAvaliacao
  FROM avaliacao AS A
  
  LEFT JOIN Filme AS F
  ON A.FilmeID = F.FilmeID
  
  GROUP BY F.Titulo, F.Genero, A.Nota
  ORDER BY MediaAvaliacao DESC;

<div align= "center">
  
| Titulo                | Genero       | Nota | MediaAvaliacao |
|-----------------------|-------------|------|----------------|
| The Matrix           | Sci-Fi      | 5    | 5.00           |
| Avengers             | Action      | 5    | 5.00           |
| The Godfather        | Crime       | 5    | 5.00           |
| Frozen               | Animation   | 5    | 5.00           |
| The Dark Knight      | Action      | 5    | 5.00           |
| Interstellar         | Sci-Fi      | 5    | 5.00           |
| Jurassic Park        | Adventure   | 5    | 5.00           |
| Inception            | Sci-Fi      | 4    | 4.00           |
| The Matrix           | Sci-Fi      | 4    | 4.00           |
| Interstellar         | Sci-Fi      | 4    | 4.00           |
| Pride and Prejudice  | Romance     | 4    | 4.00           |
| The Godfather        | Crime       | 4    | 4.00           |
| Frozen               | Animation   | 4    | 4.00           |
| Titanic              | Romance     | 3    | 3.00           |
| Jurassic Park        | Adventure   | 3    | 3.00           |
| Pride and Prejudice  | Romance     | 3    | 3.00           |

</div>

- **Recomendar filmes com base na popularidade:**
  ```sql
   SELECT	F.Titulo,
	      	F.FilmeID,
		      COUNT(A.AvaliacaoID) as Quantidade       
  FROM Filme AS F
  
  JOIN avaliacao AS A
  ON F.FilmeID = A.FilmeID
  
  GROUP BY F.Titulo, F.FilmeID
  ORDER BY Quantidade DESC, F.Titulo;
  
<div align= "center">

| Titulo               | FilmeID | Quantidade |
|----------------------|---------|------------|
| The Matrix           | 1       | 3          |
| Frozen               | 7       | 2          |
| Interstellar         | 6       | 2          |
| Jurassic Park        | 10      | 2          |
| Pride and Prejudice  | 9       | 2          |
| The Dark Knight      | 8       | 2          |
| The Godfather        | 5       | 2          |
| Avengers             | 4       | 1          |
| Inception            | 2       | 1          |
| Titanic              | 3       | 1          |

</div>

- **Usuários que mais avaliaram filmes:**
  ```sql
  SELECT	U.Nome,
		      Count(A.UsuarioID) AS TotalAvaliacaoes
  FROM usuario AS U
  
  JOIN avaliacao AS A
  ON U.UsuarioID = A.UsuarioID
  
  GROUP BY U.Nome
  ORDER BY TotalAvaliacaoes DESC;

<div align= "center">

| Nome   | TotalAvaliacaoes |
|--------|------------------|
| Carol  | 4               |
| Alice  | 3               |
| Bob    | 3               |
| Daniel | 2               |
| Evelyn | 2               |
| Frank  | 2               |
| Grace  | 2               |

</div>

# Entre em contato comigo 📭!!
[![LinkedIn](https://img.shields.io/badge/LinkedIn-483d8b?style=for-the-badge&logo=linkedin&logoColor=white)](www.linkedin.com/in/celiana-rocha-aa461824a)
[![Gmail](https://img.shields.io/badge/Gmail-483d8b?style=for-the-badge&logo=gmail&logoColor=white)](celianarocha223@gmail.com)
</div>

