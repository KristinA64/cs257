'''
Kristin Albright
25 October 2021
'''
import sys
import argparse
import flask
import json
import psycopg2

app = flask.Flask(__name__)

'''
REQUEST: /games

RESPONSE: a JSON list of dictionaries, each of which represents one
Olympic games, sorted by year. Each dictionary in this list will have
the following fields.

   id -- (INTEGER) a unique identifier for the games in question
   year -- (INTEGER) the 4-digit year in which the games were held (e.g. 1992)
   season -- (TEXT) the season of the games (either "Summer" or "Winter")
   city -- (TEXT) the host city (e.g. "Barcelona")
'''
@app.route('/games')
def get_games():
    games_list = []

    try:
        connection = psycopg2.connect(database='olympics', user='kristinalbright', password='')
    except Exception as e:
        print(e)
        exit()

    try:
        cursor = connection.cursor()
        query = 'SELECT athletes.name FROM athletes ORDER BY athletes.name'
        cursor.execute(query)
    except Exception as e:
        print(e)
        exit()

    query = '''SELECT games.id, games.games, cities.city
        FROM games, athletes_info, cities
        WHERE athletes_info.city_id = cities.id
        AND athletes_info.game_id = games.id
        GROUP BY games.id, games.games, cities.city, athletes_info.year
        ORDER BY athletes_info.year'''
    try:
        cursor.execute(query)
    except Exception as e:
        print(e)
        exit()
    for row in cursor:
        games_dict = {}
        games_dict = {'id':row[0], 'year':row[1][0:4], 'season':row[1][4:],'city':row[2]}
        games_list.append(games_dict)
        print(games_dict)
        print()

    return json.dumps(games_list)

'''
REQUEST: /nocs

RESPONSE: a JSON list of dictionaries, each of which represents one
National Olympic Committee, alphabetized by NOC abbreviation. Each dictionary
in this list will have the following fields.

   abbreviation -- (TEXT) the NOC's abbreviation (e.g. "USA", "MEX", "CAN", etc.)
   name -- (TEXT) the NOC's full name (see the noc_regions.csv file)
'''
@app.route('/nocs')
def get_nocs():
    noc_list = []

    try:
        connection = psycopg2.connect(database='olympics', user='kristinalbright', password='')
    except Exception as e:
        print(e)
        exit()

    try:
        cursor = connection.cursor()
        query = 'SELECT athletes.name FROM athletes ORDER BY athletes.name'
        cursor.execute(query)
    except Exception as e:
        print(e)
        exit()

    query = '''SELECT noc.abbrv, noc_regions.region, noc_regions.notes
        FROM noc, athletes_info, noc_regions
        WHERE athletes_info.noc_id = noc.id
        AND noc_regions.abbrv = noc.abbrv
        GROUP BY noc.abbrv, noc_regions.region, noc_regions.notes
        ORDER BY noc.abbrv'''
    try:
        cursor.execute(query)
    except Exception as e:
        print(e)
        exit()
    for row in cursor:
        noc_dict = {}
        if row[2] == '': name = row[1]
        else: name = row[2]
        noc_dict = {'abbreviation':row[0], 'name':name}
        noc_list.append(noc_dict)
        print(noc_dict)
        print()

    return json.dumps(noc_list)

'''
REQUEST: /medalists/games/<games_id>?[noc=noc_abbreviation]

RESPONSE: a JSON list of dictionaries, each representing one athlete
who earned a medal in the specified games. Each dictionary will have the
following fields.

   athlete_id -- (INTEGER) a unique identifier for the athlete
   athlete_name -- (TEXT) the athlete's full name
   athlete_sex -- (TEXT) the athlete's sex as specified in the database ("F" or "M")
   sport -- (TEXT) the name of the sport in which the medal was earned
   event -- (TEXT) the name of the event in which the medal was earned
   medal -- (TEXT) the type of medal ("gold", "silver", or "bronze")
'''
@app.route('/medalists/games/<int:games_id>', methods=['GET'])
def get_medals(games_id):
    medals_list = []

    noc_abbrv = flask.request.args.get('noc')

    try:
        connection = psycopg2.connect(database='olympics', user='kristinalbright', password='')
    except Exception as e:
        print(e)
        exit()

    try:
        cursor = connection.cursor()
        query = 'SELECT athletes.name FROM athletes ORDER BY athletes.name'
        cursor.execute(query)
    except Exception as e:
        print(e)
        exit()
    if noc_abbrv is not None:
        query = '''SELECT athletes.id, athletes.name, athletes_info.sex, sports.sport, events.event, athletes_info.medal
        FROM athletes, athletes_info, sports, events, games, noc
        WHERE athletes_info.medal NOT LIKE 'NA'
        AND athletes.id = athletes_info.athlete_id
        AND sports.id = athletes_info.sport_id
        AND events.id = athletes_info.event_id
        AND noc.id = athletes_info.noc_id
        AND games.id = %s
        AND noc.abbrv = %s
        AND games.id = athletes_info.game_id
        GROUP BY athletes.id, athletes.name, athletes_info.sex, sports.sport, events.event, athletes_info.medal
        ORDER BY athletes.id;'''
        try:
            cursor.execute(query, (games_id, noc_abbrv,))
        except Exception as e:
            print(e)
            exit()
        for row in cursor:
            medal_dict = {}
            medal_dict = {'athlete_id':row[0], 'athlete_name':row[1], 'athlete_sex':row[2],
                         'sport':row[3], 'event':row[4], 'medal':row[5]}
            medals_list.append(medal_dict)
            print(medal_dict)
            print()
    else:
        query = '''SELECT athletes.id, athletes.name, athletes_info.sex, sports.sport, events.event, athletes_info.medal
        FROM athletes, athletes_info, sports, events, games
        WHERE athletes_info.medal NOT LIKE 'NA'
        AND athletes.id = athletes_info.athlete_id
        AND sports.id = athletes_info.sport_id
        AND events.id = athletes_info.event_id
        AND games.id = %s
        AND games.id = athletes_info.game_id
        GROUP BY athletes.id, athletes.name, athletes_info.sex, sports.sport, events.event, athletes_info.medal
        ORDER BY athletes.id;'''
        try:
            cursor.execute(query, (games_id,))
        except Exception as e:
            print(e)
            exit()
        for row in cursor:
            medal_dict = {}
            medal_dict = {'athlete_id':row[0], 'athlete_name':row[1], 'athlete_sex':row[2],
                         'sport':row[3], 'event':row[4], 'medal':row[5]}
            medals_list.append(medal_dict)
            print(medal_dict)
            print()

    return json.dumps(medals_list)

if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('host', help='the host on which this application is running')
    parser.add_argument('port', type=int, help='the port on which this application is listening')
    arguments = parser.parse_args()
    app.run(host=arguments.host, port=arguments.port, debug=True)
