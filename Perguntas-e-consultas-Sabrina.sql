-- Qual é o jogo e sua desenvolvedora que tem os 3 jogos mais caros e suas avaliações?
SELECT price, name, developer, positive_ratings, negative_ratings 
FROM steam order by price desc limit 3;

-- Quais desenvolvedores tem mais avaliação positivas/negativas? 
SELECT developer, sum(positive_ratings) aval_posit 
FROM steam group by developer order by aval-posit desc;
SELECT developer, sum(negative_ratings) aval_negat 
FROM steam group by developer order by aval_negat desc;

-- Quais as plataformas que tem mais disponibilidade? 
SELECT platforms, count(platforms) contador 
FROM steam group by platforms order by contador desc;