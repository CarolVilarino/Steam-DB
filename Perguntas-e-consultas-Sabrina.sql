-- Qual é o jogo e sua desenvolvedora que tem os 3 jogos mais caros e suas avaliações?
select price, name, developer, positive_ratings, negative_ratings from steam order by price desc limit 3;

-- Quais desenvolvedores tem mais avaliação positivas/negativas? 
select developer, sum(positive_ratings) aval_posit from steam group by developer order by aval-posit desc;
select developer, sum(negative_ratings) aval_negat from steam group by developer order by aval_negat desc;

-- Quais as plataformas que tem mais disponibilidade? 
select platforms, count(platforms) contador from steam group by platforms order by contador desc;