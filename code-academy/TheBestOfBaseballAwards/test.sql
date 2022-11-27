-- Active: 1669078746028@@127.0.0.1@5432@baseball
SELECT 
    AVG(people.weight),
    teams.name,
    batting.yearid
FROM people
INNER JOIN batting
    ON people.playerid = batting.playerid
INNER JOIN teams
    ON batting.team_id = teams.id
GROUP BY 
    teams.name, 
    batting.yearid
ORDER BY
    AVG(people.weight)
    DESC;
    