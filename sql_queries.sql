-- SQL Queries for Bundesliga Club Performance Analysis

-- 1. Fetch total goals scored by each player for Bayern Munich
SELECT player_id, SUM(goals) AS total_goals
FROM game_events
WHERE team = 'Bayern Munich'
GROUP BY player_id
ORDER BY total_goals DESC;

-- 2. Fetch average expected goals (xG) per match for Bayern Munich
SELECT match_id, AVG(xG) AS average_xG
FROM game_events
WHERE team = 'Bayern Munich'
GROUP BY match_id;

-- 3. Fetch market value of players based on performance metrics
SELECT player_id, market_value
FROM players
WHERE team = 'Bayern Munich'
ORDER BY market_value DESC;

-- 4. Get match results (wins, losses, draws) for Bayern Munich
SELECT result, COUNT(*) AS match_count
FROM game_events
WHERE team = 'Bayern Munich'
GROUP BY result;

-- 5. Fetch player performance metrics including goals and assists
SELECT player_id, SUM(goals) AS total_goals, SUM(assists) AS total_assists
FROM game_events
WHERE team = 'Bayern Munich'
GROUP BY player_id
ORDER BY total_goals DESC, total_assists DESC;

-- 6. Fetch total expected goals (xG) and actual goals for a specific match
SELECT match_id, SUM(xG) AS total_xG, SUM(goals) AS total_goals
FROM game_events
WHERE team = 'Bayern Munich' AND match_id = 'specific_match_id'
GROUP BY match_id;

-- 7. Get the player with the highest xG in a season
SELECT player_id, SUM(xG) AS total_xG
FROM game_events
WHERE team = 'Bayern Munich'
GROUP BY player_id
ORDER BY total_xG DESC
LIMIT 1;

-- Add more queries as needed for your analysis