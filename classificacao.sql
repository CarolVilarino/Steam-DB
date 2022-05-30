
# Classificação por jogos com as 5 maiores conquistas e avaliações positivas.
select games.name as "Nome", games.achievements as "Conquistas", games.positive_ratings as "Avaliações positivas" from steam.games order by games.achievements desc, games.positive_ratings desc limit 5;

# Classificação por jogos com as 5 maiores conquistas e avaliações negativas.
select games.name as "Nome", games.achievements as "Conquistas", games.negative_ratings as "Avaliações negativas" from steam.games 
where games.achievements > 0 and games.negative_ratings > 0
order by games.achievements asc, games.negative_ratings desc limit 5;

# Classificação jogos pelo genero e média de preço.
select genres as Gênero, price as Preço, count(genres) as Quantidade, FORMAT(count(genres)/price, 2, 'en') as "Média de preço" from games
where price > 0 group by genres order by "Média de preço" desc limit 5;
