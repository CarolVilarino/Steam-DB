SELECT * FROM steam;

# Porcentagem dos jogos e suas categorias (multiplayer, coop, single)
# o % é um wild card que representa a string toda e vai procurar dentro da coluna o valor desejado
SELECT `name`, `categories`, 
       SUM( CASE WHEN `categories` LIKE  '%Single-player%' THEN 1 ELSE 0 END ) AS SinglePlayer,
       SUM( CASE WHEN `categories` LIKE '%Multi-player%' THEN 1 ELSE 0 END ) AS MultiPlayer,
	   SUM( CASE WHEN `categories` LIKE '%Co-op%' THEN 1 ELSE 0 END ) AS Coop,
       SUM( CASE WHEN `categories` LIKE '%Cross-Platform%' THEN 1 ELSE 0 END ) AS CrossPlatform
  FROM `steam`
GROUP BY `name`

# Quais generos tem mais jogos publicados na steam
SELECT `name`, `genres`, 
      SUM( CASE WHEN `genres` LIKE '%Accounting%' THEN 1 ELSE 0 END ) AS `Accounting`,
      SUM( CASE WHEN `genres` LIKE '%Action%' THEN 1 ELSE 0 END ) AS `Action`,
	    SUM( CASE WHEN `genres` LIKE '%Animation & Modeling%' THEN 1 ELSE 0 END ) AS `Animation&Modeling`,
      SUM( CASE WHEN `genres` LIKE '%Audio Production%' THEN 1 ELSE 0 END ) AS `AudioProduction`,
      SUM( CASE WHEN `genres` LIKE '%Casual%' THEN 1 ELSE 0 END ) AS `Casual`,
      SUM( CASE WHEN `genres` LIKE '%Design & Illustration%' THEN 1 ELSE 0 END ) AS `Design&Illustration`,
      SUM( CASE WHEN `genres` LIKE '%Documentary%' THEN 1 ELSE 0 END ) AS `Documentary`,
      SUM( CASE WHEN `genres` LIKE '%Early Access%' THEN 1 ELSE 0 END ) AS `Early Access`,
      SUM( CASE WHEN `genres` LIKE '%Education%' THEN 1 ELSE 0 END ) AS `Education`,
      SUM( CASE WHEN `genres` LIKE '%Free to Play%' THEN 1 ELSE 0 END ) AS `Free to Play`,
      SUM( CASE WHEN `genres` LIKE '%Game Development%' THEN 1 ELSE 0 END ) AS `Game Development`,
      SUM( CASE WHEN `genres` LIKE '%Gore%' THEN 1 ELSE 0 END ) AS `Gore`,
      SUM( CASE WHEN `genres` LIKE '%Indie%' THEN 1 ELSE 0 END ) AS `Indie`,
      SUM( CASE WHEN `genres` LIKE '%Massively Multiplayer%' THEN 1 ELSE 0 END ) AS `Massively Multiplayer`,
      SUM( CASE WHEN `genres` LIKE '%Nudity%' THEN 1 ELSE 0 END ) AS `Nudity`,
      SUM( CASE WHEN `genres` LIKE '%Nudity Gore%' THEN 1 ELSE 0 END ) AS `NudityGore`,
      SUM( CASE WHEN `genres` LIKE '%Photo Editing%' THEN 1 ELSE 0 END ) AS `Photo Editing`,
      SUM( CASE WHEN `genres` LIKE '%Racing%' THEN 1 ELSE 0 END ) AS `Racing`,
      SUM( CASE WHEN `genres` LIKE '%RPG%' THEN 1 ELSE 0 END ) AS `RPG`,
      SUM( CASE WHEN `genres` LIKE '%Sexual Content%' THEN 1 ELSE 0 END ) AS `Sexual Content`,
      SUM( CASE WHEN `genres` LIKE '%Simulation%' THEN 1 ELSE 0 END ) AS `Simulation`,
      SUM( CASE WHEN `genres` LIKE '%Software Training%' THEN 1 ELSE 0 END ) AS `Software Training`,
      SUM( CASE WHEN `genres` LIKE '%Sports%' THEN 1 ELSE 0 END ) AS `Sports`,
      SUM( CASE WHEN `genres` LIKE '%Strategy%' THEN 1 ELSE 0 END ) AS `Strategy`,
      SUM( CASE WHEN `genres` LIKE '%Utilities%' THEN 1 ELSE 0 END ) AS `Utilities`,
      SUM( CASE WHEN `genres` LIKE '%Video Production%' THEN 1 ELSE 0 END ) AS `Video Production`,
      SUM( CASE WHEN `genres` LIKE '%Violent%' THEN 1 ELSE 0 END ) AS `Violent`,
      SUM( CASE WHEN `genres` LIKE '%Web Publishing%' THEN 1 ELSE 0 END ) AS `Web Publishing`
  FROM `steam`
GROUP BY `name`
