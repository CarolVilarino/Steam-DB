SELECT * FROM schema_fimodulo.steam;

# pergunta 1
# first release_date year is 1998 and last is 2019.

# modelo (escolha um ano):
SELECT nome.release_date, sum(nome.contador) FROM 
(SELECT release_date, count(release_date) as contador FROM steam
WHERE release_date LIKE "1998%") 
as nome group by nome.contador;


# pergunta 2

# Ale
SELECT name, release_date FROM steam WHERE release_date LIKE "%03-09";

# Sa
SELECT name, release_date FROM steam WHERE release_date LIKE "%03-24";

# Diu
SELECT name, release_date FROM steam WHERE release_date LIKE "%12-12";

# Raquel
SELECT name, release_date FROM steam WHERE release_date LIKE "%11-17";

# Molly
SELECT name, release_date FROM steam WHERE release_date LIKE "%06-13";


# pergunta 3

# Genre estudo: Action, Free to Play, Strategy, Adventure, Indie, RPG, Animation & Modeling, Video Production, Casual, Simulation, Racing, Violent, Massively Multiplayer, Nudity, Sports, Early Access, Gore;

# modelo (escolha um gênero):
SELECT genero.genres, sum(genero.contador) from 
(SELECT genres, count(genres) as contador FROM steam
 where genres like '%ACTION%') as genero group by genero.contador;
