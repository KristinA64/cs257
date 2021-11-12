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


@api.route('/titles/')
def get_titles():
    ''' Returns a list of all the Grammy award titles in our database.
        By default, the list is presented in the decreasing order of year.
        Returns an empty list if there's any database failure.
    '''
    query = '''SELECT award_year.id, award_year.award_title
               FROM award_year
               ORDER BY award_year.id '''

  
    title_list = []
    try:
        connection = get_connection()
        cursor = connection.cursor()
        cursor.execute(query)
        for row in cursor:
            title = {'id':row[0], 'title':row[1]}
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
