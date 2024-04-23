-- overall view of top 1000  youtubers dataset --
SELECT
COUNT(DISTINCT Country) AS Total_countries,
COUNT(DISTINCT Categories) AS total_catogries,
AVG(cast(Suscribers as bigint)) AS avg_Suscribers,
AVG(Visits) AS avg_visits,
AVG(Likes) AS avg_likes,
AVG(Comments) AS avg_comments
FROM Top_1000_Youtube

--Top Category --
SELECT 
Categories,
COUNT(Username) AS Total_channel
FROM Top_1000_Youtube
GROUP BY Categories
ORDER BY Total_channel DESC

-- Geographical analysis --
SELECT
Country,
Count(Username) AS Total_channel
FROM Top_1000_Youtube
GROUP BY Country
ORDER BY Total_channel DESC

-- Suscriber enganment --
SELECT TOP 10
Username,
AVG(cast(Suscribers as bigint)) AS avg_Suscribers,
AVG(Visits) AS avg_visits,
AVG(Likes) AS avg_likes,
AVG(Comments) AS avg_comments
FROM Top_1000_Youtube
GROUP BY Username
ORDER BY avg_Suscribers

--top performance identification --
SELECT TOP 10
Username,
Suscribers,
Country
FROM Top_1000_Youtube
ORDER BY Suscribers DESC

-- Content and channel recommendation --
SELECT
Categories,
AVG(cast(Suscribers as bigint)) AS avg_suscribers,
AVG(Visits) AS avg_visits,
AVG(Likes) AS avg_likes,
AVG(Comments) AS avg_comments
FROM Top_1000_Youtube
GROUP BY Categories
ORDER BY avg_suscribers DESC

--Cross country scscriber enganment --
SELECT TOP 10
Country,
AVG(cast(Suscribers as bigint)) AS avg_scscribers,
AVG(Visits) AS avg_visits,
AVG(Likes) AS avg_likes,
AVG(Comments) AS avg_comments
FROM Top_1000_Youtube
GROUP BY Country
ORDER BY avg_scscribers DESC
