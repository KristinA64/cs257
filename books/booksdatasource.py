#!/usr/bin/env python3
'''
    booksdatasource.py
    Jeff Ondich, 21 September 2021
    For use in the "books" assignment at the beginning of Carleton's
    CS 257 Software Design class, Fall 2021.

    Kristin Albright and Jayti Arora, 2 October 2021
'''

    filtered_authors = sorted(filtered_authors, key=lambda author: author.given_name) 
    filtered_authors = sorted(filtered_authors, key=lambda author: author.surname)
    filtered_authors = sorted(filtered_authors, key=lambda author: (author.surname, author.given_name)

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
Dict = {}

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
            reader = csv.reader(csv_file)

            for row in reader:
                title = row[0]
                year = int(row[1])
                book_authors = []
                if 'and' in row[2]:
                    names = row[2].split()
                    if "(" in names[6]:
                        given_name1 = names[4]
                        surname1 = names[5]
                    else:
                        given_name1 = names[4] + " " + names[5]
                        surname1 = names[6]

                    if row[2][-2] != "-":
                        birth_year1 = row[2][-10:-6]
                        death_year1 = row[2][-5:-1]
                    else:
                        birth_year1 = row[2][-6:-2]
                        death_year1 = None
                    tempAuthor = Author(surname1, given_name1, birth_year1, death_year1)


                    if "(" in names[2]:
                        given_name2 = names[0]
                        surname2 = names[1]
                        if names[2][-2] != "-":
                            birth_year2 = names[2][-10:-6]
                            death_year2 = names[2][-5:-1]
                        else:
                            birth_year2 = names[2][-6:-2]
                            death_year2 = None
                    else:
                        given_name2 = names[0] + " " + names[1]
                        surname2 = names[2]
                        if names[3][-2] != "-":
                            birth_year2 = names[3][-10:-6]
                            death_year2 = names[3][-5:-1]
                        else:
                            birth_year2 = names[3][-6:-2]
                            death_year2 = None
                    tempAuthor2 = Author(surname2, given_name2, birth_year2, death_year2)

                    already_added1 = False
                    already_added2 = False
                    for ex_author in authors:
                        if ex_author == Author(given_name1, surname1):
                            book_authors.append(tempAuthor)
                            already_added1 = True
                        if ex_author == Author(given_name2, surname2):
                            book_authors.append(tempAuthor2)
                            already_added2 = True
                    if already_added1 == False:
                        added_author = Author(given_name1, surname1, birth_year1, death_year1)
                        authors.append(tempAuthor)
                        book_authors.append(tempAuthor)
                    if already_added2 == False:
                        added_author = Author(given_name2, surname2, birth_year2, death_year2)
                        authors.append(tempAuthor2)
                        book_authors.append(tempAuthor2)

                else:
                    names = row[2].split()
                    if "(" in names[2]:
                        given_name = names[0]
                        surname = names[1]
                    else:
                        given_name = names[0] + " " + names[1]
                        surname = names[2]

                    if row[2][-2] != "-":
                        birth_year = row[2][-10:-6]
                        death_year = row[2][-5:-1]
                    else:
                        birth_year = row[2][-6:-2]
                        death_year = None

                    tempAuthor = Author(surname, given_name, birth_year, death_year)

                    already_added = False
                    for ex_author in authors:
                        if ex_author == Author(given_name, surname):
                            book_authors.append(tempAuthor)
                            already_added = True

                    if already_added == False:
                        added_author = Author(given_name, surname, birth_year, death_year)
                        authors.append(tempAuthor)
                        book_authors.append(tempAuthor)
                books.append(Book(title, year, book_authors))

        pass

    def authors(self, search_text=None):
        ''' Returns a list of all the Author objects in this data source whose names contain
            (case-insensitively) the search text. If search_text is None, then this method
            returns all of the Author objects. In either case, the returned list is sorted
            by surname, breaking ties using given name (e.g. Ann Bronte comes before Charlotte Bronte).
        '''
        if search_text is not None:
            filtered_authors = list(filter(lambda author: (search_text.lower() in author.given_name.lower()) or (search_text.lower() in author.surname.lower()), authors))
            filtered_authors = sorted(filtered_authors, key=lambda author: author.given_name)
            filtered_authors = sorted(filtered_authors, key=lambda author: author.surname)
            return filtered_authors
        else:
            filtered_authors = sorted(authors, key=lambda author: author.given_name)
            filtered_authors = sorted(filtered_authors, key=lambda author: author.surname)
            return filtered_authors

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
        if search_text is not None:
            filtered_books = list(filter(lambda book: search_text.lower() in book.title.lower(), books))
            if sort_by == 'year':
                filtered_books = sorted(filtered_books, key=lambda book: book.title)
                filtered_books = sorted(filtered_books, key=lambda book: book.publication_year)
            else:
                filtered_books = sorted(filtered_books, key=lambda book: book.publication_year)
                filtered_books = sorted(filtered_books, key=lambda book: book.title)
            return filtered_books
        else:
            return books


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
        if (start_year is not None) and (end_year is not None):
            filtered_books = list(filter(lambda book: (book.publication_year >= start_year) and (book.publication_year<= end_year), books))
            filtered_books = sorted(filtered_books, key=lambda book: book.title)
            filtered_books = sorted(filtered_books, key=lambda book: book.publication_year)
            return filtered_books

        elif start_year is not None:
            filtered_books = list(filter(lambda book: book.publication_year>= start_year, books))
            filtered_books = sorted(filtered_books, key=lambda book: book.title)
            filtered_books = sorted(filtered_books, key=lambda book: book.publication_year)
            return filtered_books
        elif end_year is not None:
            filtered_books = list(filter(lambda book: book.publication_year<= end_year, books))
            filtered_books = sorted(filtered_books, key=lambda book: book.title)
            filtered_books = sorted(filtered_books, key=lambda book: book.publication_year)
            return filtered_books
        else:
            return books
