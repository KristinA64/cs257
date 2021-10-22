'''
Kristin Albright
19 October 2021
'''
import psycopg2
import argparse

def parse():
    parser = argparse.ArgumentParser()

    #list the names of all athletes from a specified NOC
    parser.add_argument('-n', '--noc', nargs=1, const=None, help='Lists the names of all athletes from a specified NOC.')

    #list all the NOCs and the number of gold medals they've won, in decreasing order
    parser.add_argument('-m', '--medals', action='store_true', help='List all the NOCs and the number of gold medals they have won in decreasing order.')

    #list all gold medal winners from a specified NOC
    parser.add_argument('-gm', '--goldmedals', nargs=1, const=None, help='List all gold medal winners from a specified NOC.')

    args = parser.parse_args()

    return args

def queryNOC(cursor, query, query_string):
    '''this function performs the sql query that will list all the athletes
       from a specified NOC
    '''
    query = '''SELECT athletes.name
       FROM athletes, athletes_info, noc
       WHERE noc.id = athletes_info.noc_id
       AND athletes.id = athletes_info.athlete_id
       AND noc.abbrv = %s
       GROUP BY athletes.name'''
    try:
        cursor.execute(query, (query_string,))
    except Exception as e:
        print(e)
        exit()
    for row in cursor:
        print(row[0])
        print()

def queryMedals(cursor, query):
    '''this function performs the sql query that will list all the nocs and
       the gold medals that they've won in descending order
    '''
    query = '''SELECT noc.abbrv, COUNT(athletes_info.medal)
        FROM noc, athletes_info, events
        WHERE noc.id = athletes_info.noc_id
        AND events.id = athletes_info.event_id
        AND athletes_info.medal LIKE 'G%'
        GROUP BY noc.abbrv
        ORDER BY COUNT(athletes_info.medal) DESC'''
    try:
        cursor.execute(query)
    except Exception as e:
        print(e)
        exit()
    for row in cursor:
        print(row[0])
        print()

def queryGold(cursor, query, query_string):
    '''this function performs the sql query that will list all the athletes
       that have won gold medals from a specified NOC
    '''
    query = '''SELECT athletes.name
        FROM noc, athletes_info, athletes
        WHERE noc.id = athletes_info.noc_id
        AND athletes.id = athletes_info.athlete_id
        AND athletes_info.medal = 'Gold'
        AND noc.abbrv = %s
        GROUP BY athletes.name'''
    try:
        cursor.execute(query, (query_string,))
    except Exception as e:
        print(e)
        exit()
    for row in cursor:
        print(row[0])
        print()

def main():
    args = parse()

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

    if args.noc:
        queryNOC(cursor, query, args.noc[0])
    if args.medals:
        queryMedals(cursor, query)
    if args.goldmedals:
        print("hi")
        queryGold(cursor, query, args.goldmedals[0])

    connection.close()


if __name__ == '__main__':
    main()
