#!/usr/bin/env python3
'''
    booksdatasource.py
    Jeff Ondich, 21 September 2021
    For use in the 'books' assignment at the beginning of Carleton's
    CS 257 Software Design class, Fall 2021.

    Kristin Albright and Jayti Arora, 2 October 2021
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
            no two books have the same title, so 'same title' is the same
            thing as 'same book'. '''
        return self.title == other.title


class BooksDataSource:
    #Initalizes the books and authors lists by parsing through the csv file
    def __init__(self, books_csv_file_name):
        ''' The books CSV file format looks like this:
                title,publication_year,author_description
            For example:
                All Clear,2010,Connie Willis (1945-)
                'Right Ho, Jeeves',1934,Pelham Grenville Wodehouse (1881-1975)
            This __init__ method parses the specified CSV file and creates
            suitable instance variables for the BooksDataSource object containing
            a collection of Author objects and a collection of Book objects.
        '''

        with open(books_csv_file_name, 'r') as csv_file:
            reader = csv.reader(csv_file)
            self.all_books = []
            self.all_authors = []

            for row in reader:
                title = row[0]
                year = int(row[1])

                book_authors = []
                multiple_authors = row[2].split('and')
                for each_author in multiple_authors:
                    names = each_author.split()
                    temp_author = self.parse_authors(names)

                    already_added = False
                    for ex_author in self.all_authors:
                        if ex_author == temp_author:
                            book_authors.append(temp_author)
                            already_added = True

                    if already_added == False:
                        added_author = temp_author
                        self.all_authors.append(added_author)
                        book_authors.append(added_author)
                self.all_books.append(Book(title, year, book_authors))

    def parse_authors(self, names):
        ''' Helper function which initializes the given name, surname, birth
            year, and death year of an author given the list of strings: name.
            Returns a temporary Author object.
        '''
        if '(' in names[2]:
            given_name = names[0]
            surname = names[1]
            years = names[2].split('-')
        else:
            given_name = names[0] + ' ' + names[1]
            surname = names[2]
            years = names[3].split('-')

        if len(years) == 2:
            birth_year = years[0].replace('(','')
            death_year = years[1].replace(')','')
        else:
            birth_year = years[0].replace('(','')
            death_year = None

        temp_author = Author(surname, given_name, birth_year, death_year)
        return temp_author

    def authors(self, search_text=None):
        ''' Returns a list of all the Author objects in this data source whose names contain
            (case-insensitively) the search text. If search_text is None, then this method
            returns all of the Author objects. In either case, the returned list is sorted
            by surname, breaking ties using given name (e.g. Ann Bronte comes before Charlotte Bronte).
        '''
        if search_text is not None:
            filtered_authors = list(filter(lambda author: (search_text.lower() in author.given_name.lower()) or (search_text.lower() in author.surname.lower()), self.all_authors))
            filtered_authors = sorted(filtered_authors, key=lambda author: (author.surname, author.given_name))
            return filtered_authors
        else:
            filtered_authors = sorted(self.all_authors, key=lambda author: (author.surname, author.given_name))
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
            filtered_books = list(filter(lambda book: search_text.lower() in book.title.lower(), self.all_books))
            if sort_by == 'year':
                filtered_books = sorted(filtered_books, key=lambda book: (book.publication_year, book.title))
            else:
                filtered_books = sorted(filtered_books, key=lambda book: (book.title, book.publication_year))
            return filtered_books
        else:
            return self.all_books

    def display_books(self, book_list):
        ''' Prints all book titles, publication years, and author information
            in a given list to the terminal window.
        '''
        if book_list is None:
            return
        for book in book_list:
            format_book = book.title + ' ' + str(book.publication_year)
            print(format_book)
            self.display_authors(book.authors)

    def display_authors(self, author_list):
        ''' Prints all book author information for each author in a given
            list to the terminal window.
        '''
        if author_list is None:
            return
        for author in author_list:
            if author.death_year:
                format_author = author.given_name + ' ' + author.surname + '(' + author.birth_year + '-' + author.death_year + ')'
            else:
                format_author = author.given_name + ' ' + author.surname + '(' + author.birth_year + '-)'
            print(format_author)

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
            filtered_books = list(filter(lambda book: (book.publication_year >= start_year) and (book.publication_year<= end_year), self.all_books))
            filtered_books = sorted(filtered_books, key=lambda book: (book.publication_year, book.title))
            return filtered_books

        elif start_year is not None:
            filtered_books = list(filter(lambda book: book.publication_year>= start_year, self.all_books))
            filtered_books = sorted(filtered_books, key=lambda book: (book.publication_year, book.title))
            return filtered_books

        elif end_year is not None:
            filtered_books = list(filter(lambda book: book.publication_year<= end_year, self.all_books))
            filtered_books = sorted(filtered_books, key=lambda book: (book.publication_year, book.title))
            return filtered_books

        else:
            return self.all_books
