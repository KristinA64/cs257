#!/usr/bin/env python3
'''
    booksdatasource.py
    Jeff Ondich, 21 September 2021

    For use in the "books" assignment at the beginning of Carleton's
    CS 257 Software Design class, Fall 2021.
'''

import csv

class Author:
    def __init__(self, surname='', given_name='', birth_year=None, death_year=None):
        self.surname = surname
        self.given_name = given_name
        self.birth_year = birth_year
        self.death_year = death_year

    def __eq__(self, other):
        ''' For simplicity, we're going to assume that no two authors have the same name. '''
        return self.surname == other.surname and self.given_name == other.given_name

class Book:
    def __init__(self, title='', publication_year=None, authors=[]):
        ''' Note that the self.authors instance variable is a list of
            references to Author objects. '''
        self.title = title
        self.publication_year = publication_year
        self.authors = authors

    def __eq__(self, other):
        ''' We're going to make the excessively simplifying assumption that
            no two books have the same title, so "same title" is the same
            thing as "same book". '''
        return self.title == other.title

books = []
authors = []

class BooksDataSource:
    def __init__(self, books_csv_file_name):
        ''' The books CSV file format looks like this:

                title,publication_year,author_description

            For example:

                All Clear,2010,Connie Willis (1945-)
                "Right Ho, Jeeves",1934,Pelham Grenville Wodehouse (1881-1975)

            This __init__ method parses the specified CSV file and creates
            suitable instance variables for the BooksDataSource object containing
            a collection of Author objects and a collection of Book objects.
        '''
        
        with open(books_csv_file_name, 'r') as csv_file:
            reader = csv.reader(csv_file, delimiter=',')
            '''
            for row in reader:
                info_length = len(row[2].split())
                temp_author = Author()
                g_name = ""
                for i in range(info_length-2, -1, -1):
                    g_name = g_name + " " + row[2][i]
                temp_author.given_name(g_name)
                authors.append(temp_author)
                books.append(Book(row[0]),row[1])
            '''

            for row in reader:
                #books have title, publication year, and authors
                #so authors must be done first
                temp_book = Book()
                temp_book.title = row[0]
                temp_book.publication_year = row[1]
                #^^book stuff that doesn't include authors is done
                author_info = row[2]
                all_authors = []
                #^^list that will hold all the authors of 1 book as author objects
                for item in author_info:
                    temp_author2 = Author()
                    #^^not sure if should be created within for loop or out of
                    book_authors = author_info.split('and')
                    #authors is now a list of all the authors of the book
                    #authors[0] should give all info about the first author
                    for i in range(len(book_authors)):
                        temp_author2.surname(book_authors[i][-2])
                        if book_authors[i][-3] == book_authors[i][0]:
                        #^^checks if there is only 1 given name
                            temp_author2.given_name(book_authors[i][0])
                        else:
                        #assumes that there are at most 2 given names
                            temp_author2.given_name(book_authors[i][0]+ " " +book_authors[i][1])
                            #^^attempts to concatenate given names, not sure if works
                        temp_author2.birth_year(book_authors[i][-1][1:5])
                        if book_authors[i][-1][-2] != "-":
                        #^^checks if a death year exists
                            temp_author2.death_year(book_authors[i][-1][6:10])
                        all_authors.append(temp_author2)
                temp_book.authors(all_authors)
                books.append(temp_book)
                if temp_author2 not in authors: authors.append(temp_author2)
        '''
            reader = csv.Dictreader(csv_file, delimiter=',')
            for row in reader:
                print(row['title'], row['year'], row['author_info'])
                author1 = ""
                author2 = ""
                if row['author_info'].index('and'):
                    index = row['author_info'].index('and')
                    author1 = row['author_info'][:index]
                    author2 = row['author_info'][index+1:]
                #this is the birth to death years
                author1[-1]
                #this is the last name
                author1[-2] =
                #index 0 to where last name is, that is the given name

                #if author2 is not an empty string, do the same for author2
                if author2 != "":

                books.append(Book(row['title']),row['year'])
            '''

        pass

    def authors(self, search_text=None):
        ''' Returns a list of all the Author objects in this data source whose names contain
            (case-insensitively) the search text. If search_text is None, then this method
            returns all of the Author objects. In either case, the returned list is sorted
            by surname, breaking ties using given name (e.g. Ann Brontë comes before Charlotte Brontë).
        '''
        print(authors)
        if search_text is not None:
            filtered_authors = filter(lambda author: author.given_name.contains(search_text) or author.surname.contains(search_text), authors)
            sorted(filtered_authors, key=lambda author: author.given_name)
            sorted(filtered_authors, key=lambda author: author.surname)
            return filtered_authors
        else:
            return authors

    def books(self, search_text=None, sort_by='title'):
        ''' Returns a list of all the Book objects in this data source whose
            titles contain (case-insensitively) search_text. If search_text is None,
            then this method returns all of the books objects.

            The list of books is sorted in an order depending on the sort_by parameter:

                'year' -- sorts by publication_year, breaking ties with (case-insenstive) title
                'title' -- sorts by (case-insensitive) title, breaking ties with publication_year
                default -- same as 'title' (that is, if sort_by is anything other than 'year'
                            or 'title', just do the same thing you would do for 'title')
        '''
        return []

    def books_between_years(self, start_year=None, end_year=None):
        ''' Returns a list of all the Book objects in this data source whose publication
            years are between start_year and end_year, inclusive. The list is sorted
            by publication year, breaking ties by title (e.g. Neverwhere 1996 should
            come before Thief of Time 1996).

            If start_year is None, then any book published before or during end_year
            should be included. If end_year is None, then any book published after or
            during start_year should be included. If both are None, then all books
            should be included.
        '''
        return []
