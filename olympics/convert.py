'''
convert.py
Kristin Albright
19 October 2021
'''
import csv
from itertools import islice

def parseFile():
	'''
	This method opens athlete_events.csv and parses all the information into
	the appropriate list and calls writeFile on each list in order to make it
	into a new csv file
	'''

	sports = {}
	cities = {}
	teams = {}
	games = {}
	noc = {}
	events = {}
	athletes = {}
	athletes_info = []

	open_file = open('athlete_events.csv')
	reader = csv.reader(open_file)

	#sports
	sports_csv = open('sports.csv','w')
	writer = csv.writer(sports_csv)

	next(reader)
	for row in reader:
		sport = row[12]
		if sport not in sports:
			sport_id = len(sports)+1
			sports[sport] = sport_id
			writer.writerow([sport_id, sport])
	open_file.close()
	sports_csv.close()

	#cities
	cities_csv = open('cities.csv','w')
	writer = csv.writer(cities_csv)

	open_file = open('athlete_events.csv')
	reader = csv.reader(open_file)

	next(reader)
	for row in reader:
		city = row[11]
		if city not in cities:
			city_id = len(cities)+1
			cities[city] = city_id
			writer.writerow([city_id, city])
	open_file.close()
	cities_csv.close()

	#teams
	teams_csv = open('teams.csv','w')
	writer = csv.writer(teams_csv)

	open_file = open('athlete_events.csv')
	reader = csv.reader(open_file)

	next(reader)
	for row in reader:
		team = row[6]
		if team not in teams:
			team_id = len(teams)+1
			teams[team] = team_id
			writer.writerow([team_id, team])
	open_file.close()
	teams_csv.close()

	#games
	open_file = open('athlete_events.csv')
	reader = csv.reader(open_file)

	games_csv = open('games.csv','w')
	writer = csv.writer(games_csv)

	next(reader)
	for row in reader:
		games_name = row[8]
		if games_name not in games:
			games_id = len(games)+1
			games[games_name] = games_id
			writer.writerow([games_id, games_name])

	open_file.close()
	games_csv.close()

	#noc
	open_file = open('athlete_events.csv')
	reader = csv.reader(open_file)

	noc_csv = open('noc.csv','w')
	writer = csv.writer(noc_csv)

	next(reader)
	for row in reader:
		abbrv = row[7]
		if abbrv not in noc:
			noc_id = len(noc)+1
			noc[abbrv] = noc_id
			writer.writerow([noc_id, abbrv])

	open_file.close()
	noc_csv.close()

	#event
	open_file = open('athlete_events.csv')
	reader = csv.reader(open_file)

	events_csv = open('events.csv','w')
	writer = csv.writer(events_csv)

	next(reader)
	for row in reader:
		event = row[13]
		if event not in events:
			event_id = len(events)+1
			events[event] = event_id
			writer.writerow([event_id, event])

	open_file.close()
	events_csv.close()

	#athletes
	open_file = open('athlete_events.csv')
	reader = csv.reader(open_file)

	athletes_csv = open('athletes.csv','w')
	writer = csv.writer(athletes_csv)

	next(reader)
	for row in reader:
		athlete_id = row[0]
		athlete_name = row[1]
		if athlete_name not in athletes:
			athletes[athlete_name] = athlete_id
			writer.writerow([athlete_id, athlete_name])

	open_file.close()
	athletes_csv.close()

	#athletes_info
	open_file = open('athlete_events.csv')
	reader = csv.reader(open_file)

	athletes_info_csv = open('athletes_info.csv','w')
	writer = csv.writer(athletes_info_csv)

	next(reader)
	for row in reader:
		athlete_id = row[0]
		sport = row[12]
		sport_id = sports[sport]
		city = row[11]
		city_id = cities[city]
		game = row[8]
		game_id = games[game]
		abbrv = row[7]
		noc_id = noc[abbrv]
		team = row[6]
		team_id = teams[team]
		event = row[13]
		event_id = events[event]
		medal = row[14]
		year = row[9]
		writer.writerow([athlete_id, sport_id, city_id, game_id, noc_id, team_id, event_id, year, medal])

	open_file.close()
	athletes_info_csv.close()


def main():
	'''main function
	'''
    parseFile()


if __name__ == '__main__':
    main()
