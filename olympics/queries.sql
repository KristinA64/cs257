'''
queries.sql
Kristin Albright
14 October 2021
'''

/*List all the NOCs in alphabetical order by abbreviation: */
SELECT noc.id, noc.abbrv, noc.region
FROM noc
ORDER BY noc.abbrv;

/*List the names of all the athletes from Kenya: */
SELECT athletes.name
FROM athletes, noc, athletes_info
WHERE athletes.id = athletes_info.athlete_id
AND noc.id = athletes_info.noc_id
AND noc.region = 'Kenya'
ORDER BY athletes.name;

/*List all the medals won by Greg Louganis sorted by year: */
SELECT athletes.medal, games.year
FROM athletes, athletes_info, games
WHERE athletes.name = 'Greg Louganis'
ORDER BY games.year;

/*List all the nocs and the number of gold medals they have one in decreasing
  order of gold medals: */
SELECT noc.abbrv, COUNT(athletes.medal)
FROM noc, athletes, athletes_info
WHERE athletes.id = athletes_info.athlete_id
AND noc.id = athletes_info.noc_id
GROUP BY noc.abbrv
ORDER BY COUNT(athletes.medal);
