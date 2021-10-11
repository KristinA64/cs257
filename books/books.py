'''
Kristin and Jayti
October 11, 2021
CS 257
'''
import argparse
from booksdatasource import BooksDataSource
def parse():
    #initialize the parser
    parser = argparse.ArgumentParser()

    #add parameters
    parser.add_argument('-a', '--author', nargs='*', const=None, help='Given a string, prints the list of authors in the dataset whose names contains that string, sorted by last name.')
    parser.add_argument('-b', '--book', nargs='*', const=None, help='Given a string, prints the list of books in the dataset whose titles contain that string.')
    parser.add_argument('-s', '--sort', nargs=1, type=str, choices=['title','year'], default=['title'], help='Provide either "title" or "year" as the sorting method. The default it "title".' )
    parser.add_argument('-y','--years', nargs='+', type=int, const=None, help='Given 2 integers, prints the list of books in the dataset which were published between the years of the integers inclusive.')

    #parse the arguments
    args = parser.parse_args()
    return args

def print_books(args, filename):
    #add third param for sorting
    books = BooksDataSource(filename)
    #call booksdata source books function on parameter --book
    #print(args.sort)
    book_list = books.books(args.book[0], args.sort[0])
    for book in book_list:
        authors = book.authors
        format_author = format_authors(authors)
        print(book.title, book.publication_year, format_author)

def print_authors(args, filename):
    #calls booksdata source author function on parameter --author
    books = BooksDataSource(filename)
    author_list = books.authors(args.author[0])
    print(format_authors(author_list))

def print_years(args, filename):
    books = BooksDataSource(filename)
    if len(args.years) > 2:
        raise ValueError('too many years given, please enter a maximum of 2 years')
    elif len(args.years) == 2:
        if args.years[1] < args.years[0]:
            raise ValueError('end year can not be before the start year')
        else:
            book_list = books.books_between_years(args.years[0],args.years[1])
    elif len(args.years) == 1:
        book_list = books.books_between_years(args.years[0])
    elif len(args.years) == 0:
        book_list = books.books_between_years()
    for book in book_list:
        authors = book.authors
        format_author = format_authors(authors)
        print(book.title, book.publication_year, format_author)

def format_authors(author_list):
    for author in author_list:
        if author.death_year:
            format_author = author.given_name + ' ' + author.surname + '(' + author.birth_year + '-' + author.death_year + ')'
        else:
            format_author = author.given_name + ' ' + author.surname + '(' + author.birth_year + '-)'
        return format_author

def main():
    args = parse()
    filename = 'books1.csv'
    #^^maybe too trusting of the user, who knows
    #print(args.book == True)
    if args.book:
        print('hi')
        print_books(args, filename)
    elif args.author:
        print_authors(args, filename)
    elif args.years:
        print_years(args, filename)

if __name__ == '__main__':
    main()
