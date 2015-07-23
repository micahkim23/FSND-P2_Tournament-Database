-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.

DROP DATABASE IF EXISTS tournament;


CREATE DATABASE tournament;

 \c tournament
CREATE TABLE players (name TEXT, id SERIAL PRIMARY KEY);


CREATE TABLE matches(winner_id INTEGER REFERENCES players(id), loser_id INTEGER REFERENCES players(id), match_id SERIAL PRIMARY KEY);


CREATE VIEW standings AS
SELECT wins.winner_id,
       players.name,
       wins.matches_won AS win,
       numMatches.num_matches AS total
FROM wins
JOIN players ON players.id = wins.winner_id
JOIN numMatches ON players.id = numMatches.player_id
ORDER BY win DESC;


CREATE VIEW wins AS
SELECT players.id AS winner_id,
       count(matches.winner_id) AS matches_won
FROM players
LEFT JOIN matches ON players.id = matches.winner_id
GROUP BY players.id


CREATE VIEW numMatches AS
SELECT players.id AS player_id,
       COUNT (matches.winner_id) AS num_matches
FROM players
LEFT JOIN matches ON players.id = matches.winner_id
OR players.id = matches.loser_id
GROUP BY players.id