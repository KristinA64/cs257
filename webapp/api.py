'''
    books_webapp.py
    Jeff Ondich, 25 April 2016
    Updated 4 November 2020

    Tiny Flask API to support the tiny books web application.
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
    ''' Returns a list of all the authors in our database. See
        get_author_by_id below for description of the author
        resource representation.

        By default, the list is presented in alphabetical order
        by surname, then given_name. You may, however, use
        the GET parameter sort to request sorting by birth year.

            http://.../authors/?sort=birth_year

        Returns an empty list if there's any database failure.
    '''
    query = '''SELECT award_year.award_title
               FROM award_year ORDER BY award_year.award_title '''

    # sort_argument = flask.request.args.get('sort')
    # if sort_argument == 'birth_year':
    #     query += 'birth_year'
    # else:
    #     query += 'surname, given_name'

    title_list = []
    try:
        connection = get_connection()
        cursor = connection.cursor()
        cursor.execute(query)
        for row in cursor:
            title_list.append({"title":row[0]})
        cursor.close()
        connection.close()
    except Exception as e:
        print(e, file=sys.stderr)

    return json.dumps(title_list)





# @api.route('/authors/')
# def get_authors():
#     ''' Returns a list of all the authors in our database. See
#         get_author_by_id below for description of the author
#         resource representation.

#         By default, the list is presented in alphabetical order
#         by surname, then given_name. You may, however, use
#         the GET parameter sort to request sorting by birth year.

#             http://.../authors/?sort=birth_year

#         Returns an empty list if there's any database failure.
#     '''
#     query = '''SELECT id, given_name, surname, birth_year, death_year
#                FROM authors ORDER BY '''

#     sort_argument = flask.request.args.get('sort')
#     if sort_argument == 'birth_year':
#         query += 'birth_year'
#     else:
#         query += 'surname, given_name'

#     author_list = []
#     try:
#         connection = get_connection()
#         cursor = connection.cursor()
#         cursor.execute(query, tuple())
#         for row in cursor:
#             author = {'id':row[0],
#                       'given_name':row[1],
#                       'surname':row[2],
#                       'birth_year':row[3],
#                       'death_year':row[4]}
#             author_list.append(author)
#         cursor.close()
#         connection.close()
#     except Exception as e:
#         print(e, file=sys.stderr)

#     return json.dumps(author_list)

# @api.route('/books/author/<author_id>')
# def get_books_for_author(author_id):
#     query = '''SELECT books.id, books.title, books.publication_year
#                FROM books, authors, books_authors
#                WHERE books.id = books_authors.book_id
#                  AND authors.id = books_authors.author_id
#                  AND authors.id = %s
#                ORDER BY books.publication_year'''
#     book_list = []
#     try:
#         connection = get_connection()
#         cursor = connection.cursor()
#         cursor.execute(query, (author_id,))
#         for row in cursor:
#             book = {'id':row[0], 'title':row[1], 'publication_year':row[2]}
#             book_list.append(book)
#         cursor.close()
#         connection.close()
#     except Exception as e:
#         print(e, file=sys.stderr)

#     return json.dumps(book_list)

@api.route('/grammys/<grammy_id>')
def get_books_for_author(grammy_id):

    query = '''SELECT award_year.award_title, category.category, nominee_information.nominee_name
    FROM award_year, category, nominee_information, nominee_award
    WHERE nominee_award.award_year_id = %s
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
