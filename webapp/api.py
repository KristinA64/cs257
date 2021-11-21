'''
    api.py
    Kristin Albright and Xinyan Xiang
    10 November 2021
    this code was modified from previous
    code written by Jeff Ondich
'''
import sys
import flask
import json
import config
import psycopg2

api = flask.Blueprint('api', __name__)

def get_connection():
    ''' Returns a connection to the database described in the
        config module. May raise an exception as described in the
        documentation for psycopg2.connect. '''
    return psycopg2.connect(database=config.database,
                            user=config.user,
                            password=config.password)

@api.route('/help/')
def get_help():
    return flask.render_template('help.html')


@api.route('/titles/')
def get_titles():
    ''' Returns a list of all the Grammy award titles in our database.
        By default, the list is presented in the decreasing order of year.
        Returns an empty list if there's any database failure.
    '''
    query = '''SELECT award_year.id, award_year.award_title, award_year.year
               FROM award_year
               WHERE award_year.year != 2019
               ORDER BY award_year.id '''


    title_list = []
    try:
        connection = get_connection()
        cursor = connection.cursor()
        cursor.execute(query)
        for row in cursor:
            title = {'id':row[0], 'title':row[1], 'year':row[2]}
            title_list.append(title)
        cursor.close()
        connection.close()
    except Exception as e:
        print(e, file=sys.stderr)

    return json.dumps(title_list)

@api.route('/grammys/<grammy_id>')
def get_awards_for_grammy_id(grammy_id):

    query = '''SELECT award_year.award_title, category.category, nominee_information.nominee_name
    FROM award_year, category, nominee_information, nominee_award
    WHERE nominee_award.award_year_id = %s
    AND award_year.id = nominee_award.award_year_id
    AND award_year.year != 2019
    AND category.id = nominee_award.category_id
    AND nominee_information.id = nominee_award.nominee_id
    ORDER BY category.category
    '''

    nominee_list = []
    try:
        connection = get_connection()
        cursor = connection.cursor()
        cursor.execute(query, (grammy_id,))
        for row in cursor:
            nominee = {'title':row[0], 'category':row[1], 'nominee':row[2]}
            nominee_list.append(nominee)
        cursor.close()
        connection.close()
    except Exception as e:
        print(e, file=sys.stderr)

    return json.dumps(nominee_list)

@api.route('/categories/')
def get_categories():
    ''' Returns a list of all the Grammy categories in our database.
        By default, the list is presented in the decreasing order of year.
        Returns an empty list if there's any database failure.
    '''
    query = '''SELECT category.id, category.category
               FROM category,award_year,nominee_award
               WHERE category.id = nominee_award.category_id
               AND award_year.id =  nominee_award.award_year_id
               AND award_year.year != 2019
               ORDER BY category.id '''


    category_list = []
    try:
        connection = get_connection()
        cursor = connection.cursor()
        cursor.execute(query)
        for row in cursor:
            category = {'id':row[0], 'category':row[1]}
            category_list.append(category)
        cursor.close()
        connection.close()
    except Exception as e:
        print(e, file=sys.stderr)

    return json.dumps(category_list)

@api.route('/categories/<search>')
def get_categories_for_search(search):
    query = '''SELECT award_year.award_title, category.category, nominee_information.nominee_name,nominee_information.img
    FROM award_year, category, nominee_information, nominee_award
    WHERE award_year.id = nominee_award.award_year_id
    AND award_year.year != 2019
    AND category.id = nominee_award.category_id
    AND category.category ILIKE CONCAT('%%',%s,'%%')
    AND nominee_information.id = nominee_award.nominee_id
    ORDER BY award_year.year
    '''

    nominee_list = []
    try:
        connection = get_connection()
        cursor = connection.cursor()
        cursor.execute(query, (search,))
        for row in cursor:
            nominee = {'title':row[0], 'category':row[1], 'nominee':row[2],'img':row[3]}
            nominee_list.append(nominee)
        cursor.close()
        connection.close()
    except Exception as e:
        print(e, file=sys.stderr)

    return json.dumps(nominee_list)

@api.route('/artists/')
def get_artists():
    ''' Returns a list of all the artists in our database.
        By default, the list is presented in the decreasing order of year.
        Returns an empty list if there's any database failure.
    '''
    query = '''SELECT nominee_information.id, nominee_information.artist
               FROM nominee_information,award_year,nominee_award
               WHERE award_year.id =  nominee_award.award_year_id
               AND nominee_information.id = nominee_award.nominee_id
               AND award_year.year != 2019
               ORDER BY nominee_information.artist'''


    artists_list = []
    try:
        connection = get_connection()
        cursor = connection.cursor()
        cursor.execute(query)
        for row in cursor:
            artist = {'id':row[0], 'artist':row[1]}
            artists_list.append(artist)
        cursor.close()
        connection.close()
    except Exception as e:
        print(e, file=sys.stderr)

    return json.dumps(artists_list)

@api.route('/artists/<search>')
def get_artists_for_search(search):
    query = '''SELECT award_year.award_title, category.category, nominee_information.nominee_name,nominee_information.artist
FROM award_year, category, nominee_information, nominee_award
WHERE award_year.id = nominee_award.award_year_id
AND award_year.year != 2019
AND category.id = nominee_award.category_id
AND nominee_information.id = nominee_award.nominee_id
AND nominee_information.artist iLIKE CONCAT('%%',%s,'%%')
ORDER BY award_year.year
    '''

    nominee_list = []
    try:
        connection = get_connection()
        cursor = connection.cursor()
        cursor.execute(query, (search,))
        for row in cursor:
            nominee = {'title':row[0], 'category':row[1], 'nominee':row[2],'artist':row[3]}
            nominee_list.append(nominee)
        cursor.close()
        connection.close()
    except Exception as e:
        print(e, file=sys.stderr)

    return json.dumps(nominee_list)



@api.route('/nominees/')
def get_nominees():
    ''' Returns a list of all the Grammy nominees in our database.
        By default, the list is presented in the decreasing order of year.
        Returns an empty list if there's any database failure.
    '''
    query = '''SELECT nominee_information.id, nominee_information.nominee_name
               FROM nominee_information,award_year,nominee_award
               WHERE award_year.id =  nominee_award.award_year_id
               AND nominee_information.id = nominee_award.nominee_id
               AND award_year.year != 2019
               ORDER BY nominee_information.nominee_name'''


    nominees_list = []
    try:
        connection = get_connection()
        cursor = connection.cursor()
        cursor.execute(query)
        for row in cursor:
            nominee = {'id':row[0], 'nominee':row[1]}
            nominees_list.append(nominee)
        cursor.close()
        connection.close()
    except Exception as e:
        print(e, file=sys.stderr)

    return json.dumps(nominees_list)

@api.route('/nominees/<search>')
def get_nominees_for_search(search):
    query = '''SELECT award_year.award_title, category.category, nominee_information.nominee_name,nominee_information.artist
FROM award_year, category, nominee_information, nominee_award
WHERE award_year.id = nominee_award.award_year_id
AND award_year.year != 2019
AND category.id = nominee_award.category_id
AND nominee_information.id = nominee_award.nominee_id
AND nominee_information.nominee_name ILIKE CONCAT('%%',%s,'%%')
ORDER BY award_year.year
    '''

    nominee_list = []
    try:
        connection = get_connection()
        cursor = connection.cursor()
        cursor.execute(query, (search,))
        for row in cursor:
            nominee = {'title':row[0], 'category':row[1], 'nominee':row[2],'artist':row[3]}
            nominee_list.append(nominee)
        cursor.close()
        connection.close()
    except Exception as e:
        print(e, file=sys.stderr)

    return json.dumps(nominee_list)
