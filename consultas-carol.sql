SELECT * FROM steam;

# o % é um wild card que representa a string toda e vai procurar dentro da coluna o valor desejado
SELECT `name`, `categories`, 
       SUM( CASE WHEN `categories` LIKE  '%Single-player%' THEN 1 ELSE 0 END ) AS SinglePlayer,
       SUM( CASE WHEN `categories` LIKE '%Multi-player%' THEN 1 ELSE 0 END ) AS MultiPlayer,
	   SUM( CASE WHEN `categories` LIKE '%Co-op%' THEN 1 ELSE 0 END ) AS Coop,
       SUM( CASE WHEN `categories` LIKE '%Cross-Platform%' THEN 1 ELSE 0 END ) AS CrossPlatform
  FROM `steam`
GROUP BY `name`

 