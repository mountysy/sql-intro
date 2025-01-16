-- In the modern era (1960-present), how many regular season games did the best team win each season?
-- Challenge: Try to include the team's name in the results. Is it accurate?



-- Expected result: 61 rows, starting with
--
-- +------+-------------------------------+-----------+
-- | 2001 | Seattle Mariners              | 116       |
-- | 1998 | New York Yankees              | 114       |
-- | 1969 | Baltimore Orioles             | 109       |
-- | 1961 | New York Yankees              | 109       |
-- | 2018 | Boston Red Sox                | 108       |
-- | 1986 | New York Mets                 | 108       |
-- | 1975 | Cincinnati Reds               | 108       |
-- | 1970 | Baltimore Orioles             | 108       |
-- | 2019 | Houston Astros                | 107       |
-- | 2004 | St. Louis Cardinals           | 105       |

SELECT year, name, MAX(wins)
FROM teams
WHERE year >= 1960
GROUP BY year
ORDER BY MAX(wins) DESC;

-- Problem with adding name in the SELECT: if one year there are two teams with the same number of wins, then SELECT will only give you one of the two team, leaving out the other one