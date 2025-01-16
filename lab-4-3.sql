-- Who hit the most home runs in 2019, and what team did they play for?

SELECT teams.name, players.first_name, players.last_name, stats.home_runs
FROM stats INNER JOIN players ON stats.player_id = players.id INNER JOIN teams ON stats.team_id = teams.id
WHERE teams.year = 2019
ORDER BY home_runs DESC
LIMIT 1;

-- Expected result:
--
-- +---------------+------------+-----------+-----------+
-- | New York Mets | Pete       | Alonso    | 53        |
-- +---------------+------------+-----------+-----------+


