'''
queries.sql
Kristin Albright
19 October 2021
'''

/*List all the NOCs in alphabetical order by abbreviation: */
SELECT noc.id, noc.abbrv
FROM noc
ORDER BY noc.abbrv;

/*List the names of all the athletes from Kenya: */
/*this prints the athlete for each time they played for Kenya */
SELECT athletes.name
FROM athletes, teams, athletes_info
WHERE teams.id = athletes_info.team_id
AND teams.team = 'Kenya'
AND athletes.id = athletes_info.athlete_id
GROUP BY athletes.name
ORDER BY athletes.name;

/*List all the medals won by Greg Louganis sorted by year: */
SELECT athletes_info.medal, athletes.name, athletes_info.year
FROM athletes, athletes_info
WHERE athletes.name LIKE '%Louganis%'
AND athletes.id = athletes_info.athlete_id
ORDER BY athletes_info.year;

/*List all the nocs and the number of gold medals they have one in decreasing
  order of gold medals: */
SELECT noc.abbrv, COUNT(athletes_info.medal)
FROM noc, athletes_info, events
WHERE noc.id = athletes_info.noc_id
AND events.id = athletes_info.event_id
AND athletes_info.medal = 'GOLD'
GROUP BY noc.abbrv
ORDER BY COUNT(athletes_info.medal) DESC;
