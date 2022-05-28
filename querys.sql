-- quais jogos tem o tempo medio de jogo maior que 1000?

select name, median_playtime from steam where median_playtime > 100;

-- quantos jogos com avaliacao positiva maior que 1000 custam 0 reais?

select name, price, positive_ratings from steam where positive_ratings > 1000 and price = 0;

-- quais jogos foram lançados entre 2006 e 2010 e custam mais que 10 dolares?

select name, release_date, price from steam where price > 10 and release_date between '2006%' and '2010%';