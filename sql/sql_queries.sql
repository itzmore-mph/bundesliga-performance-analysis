-- sql/sql_queries.sql
-- SQL Queries for FC Bayern Munich (club_id = 27)
-- Replace 27 with another club_id as needed

-- 1. Total goals per player for Bayern Munich
SELECT
  player_id,
  SUM(goals)            AS total_goals
FROM game_events
WHERE club_id = 27
GROUP BY player_id
ORDER BY total_goals DESC
;

-- 2. Average expected goals (xg) per match for Bayern Munich
SELECT
  match_id,
  AVG(xg)               AS average_xg
FROM game_events
WHERE club_id = 27
GROUP BY match_id
ORDER BY match_id
;

-- 3. Current market value of Bayern players
-- (joins player metadata to get names alongside valuations)
SELECT
  p.player_id,
  p.player_name,
  pv.market_value
FROM players p
JOIN player_valuations pv USING(player_id)
WHERE p.club_id = 27
ORDER BY pv.market_value DESC
;

-- 4. Match result distribution (W/D/L) for Bayern Munich
SELECT
  result,
  COUNT(*)             AS match_count
FROM game_events
WHERE club_id = 27
GROUP BY result
ORDER BY match_count DESC
;

-- 5. Total goals and assists per Bayern player
SELECT
  player_id,
  SUM(goals)           AS total_goals,
  SUM(assists)         AS total_assists
FROM game_events
WHERE club_id = 27
GROUP BY player_id
ORDER BY total_goals DESC, total_assists DESC
;

-- 6. Total xG and actual goals for a specific match
-- Replace <match_id> with the ID you’re interested in
SELECT
  match_id,
  SUM(xg)              AS total_xg,
  SUM(goals)           AS total_goals
FROM game_events
WHERE club_id = 27
  AND match_id = <match_id>
GROUP BY match_id
;

-- 7. Player with the highest cumulative xG for Bayern Munich
SELECT
  player_id,
  SUM(xg)              AS total_xg
FROM game_events
WHERE club_id = 27
GROUP BY player_id
ORDER BY total_xg DESC
LIMIT 1
;
