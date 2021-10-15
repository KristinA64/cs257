'''
convert.py
Kristin Albright
14 October 2021
'''
import csv
from itertools import islice


'''
1 - CREATE TABLE statements are in olympics-schema.sql
3 - Quality of database design (based on principles in readings and videos)
1 - author names are in a comment at the top of convert.py
3 - convert.py converts the raw CSV files (athlete_events.csv and noc_regions.csv)
	into CSV files matching the tables in olympics-schema.sql
3 - the output files from convert.py load successfully into the tables
	specified in olympics-schema.sql
4 - the SQL queries in queries.sql run correctly against the resulting
	populated database (1 point apiece)
'''

'''
This method creates a new csv file and copies information from athlete_events.csv
into the new csv file.

inputs
-------
lines: all the information to be copied into the new csv file
filename: the name of the new csv file that will be made
'''
def writeFile(lines, filename):
    format_name = filename + '.csv'
    file_out = open(format_name, 'w', newline='')
    if type(lines) is dict:
        for line in lines:
            file_out.write(lines[line] + '\n')
    else:
        for line in lines:
            file_out.write(str(line) + '\n')
    file_out.close()


'''
This method opens athlete_events.csv and parses all the information into
the appropriate list and calls writeFile on each list in order to make it
into a new csv file
'''
def parseFile():
    #open_file = open('mini_athlete_events.csv')
    #athletes_file = open('athletes.csv', 'w', newline='')

    with open('mini_athlete_events.csv', 'r') as open_file:
        next(open_file)

        reader = csv.reader(open_file)

        #creating empty lists
        database = [[],{},{},[],[],{},{},[]]
        athletes = database[0]
        sports = database[1]
        cities = database[2]
        games = database[3]
        noc = database[4]
        teams = database[5]
        events = database[6]
        athlete_info = database[7]
        filenames = ['athletes', 'sports', 'cities', 'games', 'noc', 'teams', 'events', 'athletes_info']

        #starting all ids
        sport_id = 0
        city_id = 0
        game_id = 0
        noc_id = 0
        team_id = 0
        event_id = 0


        for row in reader:
            #parsing all the information
            athlete_id = row[0]
            name = row[1]
            sex = row[2]
            height = row[4]
            weight = row[5]
            team = row[6]
            noc_abbrv = row[7]
            game_string = row[8]
            year = row[9]
            season = row[10]
            city = row[11]
            sport = row[12]
            event = row[13]
            medal = row[14]

            athlete = [athlete_id, name, sex, height, weight, medal]

            #Athletes table:
            athlete_string = ','.join(athlete)
            if athlete_string not in athletes:
                athletes.append(athlete_string)

            #Sports table:
            if sport not in sports:
                sport_id = sport_id + 1
                sport_string = str(sport_id) + ',' + sport
                sports[sport_id] = sport_string

            #Cities table:
            if city not in cities:
                city_id = city_id + 1
                city_string = str(city_id) + ',' + city
                cities[city_id] = city_string

            #Games table:
            game = [game_id, game_string, year, season, city]
            if game not in games:
                game_id = game_id + 1
                game = [str(game_id), game_string, str(year), season, city]
                game_string = ','.join(game)
                games.append(game_string)

            #NOC table:
            cur_noc = [noc_id, noc_abbrv, team]
            if cur_noc not in noc:
                noc_id = noc_id + 1
                cur_noc = [str(noc_id), noc_abbrv, team]
                noc_string = ','.join(cur_noc)
                noc.append(cur_noc)

            #Teams table:
            if team not in teams:
                team_id = team_id + 1
                team_string = str(team_id) + ',' + team
                teams[team_id] = team_string

            #Events table
            if event not in events:
                event_id = event_id + 1
                no_commas = event.replace(',','')
                event_string = str(event_id) + ',' + no_commas
                events[event_id] = event_string

            all_id = [str(athlete_id), str(sport_id), str(city_id), str(game_id), str(noc_id), str(team_id), str(event_id)]
            athlete_info_string = ','.join(all_id)
            athlete_info.append(athlete_info_string)


        for item in range(len(filenames)):
            writeFile(database[item], filenames[item])


#main function
def main():
    parseFile()


if __name__ == '__main__':
    main()
