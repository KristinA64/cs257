'''
Kristin and Jayti
October 11, 2021
CS 257
'''
import argparse
from booksdatasource import BooksDataSource

#parses through the command line and returns a list of arguements
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

#calls booksdata source books function to search by title, prints the result
def print_books(args, filename):
    books = BooksDataSource(filename)
    book_list = books.books(args.book[0], args.sort[0])
    for book in book_list:
        authors = book.authors
        format_author = format_authors(authors)
        print(book.title, book.publication_year, format_author)

#calls booksdata source books function to search by author, prints the result
def print_authors(args, filename):
    books = BooksDataSource(filename)
    author_list = books.authors(args.author[0])
    print(format_authors(author_list))

#calls booksdata source books function to search by publication year, prints the result
def print_years(args, filename):
    books = BooksDataSource(filename)
    #checks if too many arguements provided, throws an error
    if len(args.years) > 2:
        raise ValueError('too many years given, please enter a maximum of 2 years')
    elif len(args.years) == 2:
        #if start year < end year, throw an error
        if args.years[1] < args.years[0]:
            raise ValueError('end year can not be before the start year')
        else:
            book_list = books.books_between_years(args.years[0],args.years[1])
    #if only 1 arg provided, will assume it is just the start year
    elif len(args.years) == 1:
        book_list = books.books_between_years(args.years[0])
    #no args, prints all books
    elif len(args.years) == 0:
        book_list = books.books_between_years()
    for book in book_list:
        authors = book.authors
        format_author = format_authors(authors)
        print(book.title, book.publication_year, format_author)

#helper function to help format the print statments of the authors
def format_authors(author_list):
    for author in author_list:
        if author.death_year:
            format_author = author.given_name + ' ' + author.surname + '(' + author.birth_year + '-' + author.death_year + ')'
        else:
            format_author = author.given_name + ' ' + author.surname + '(' + author.birth_year + '-)'
        return format_author

#main function
def main():
    args = parse()
    #set default csv as books1.csv but could be used in the future as an input from the command line
    filename = 'books1.csv'
    #calls the appropriate search method (title, author, or between year) based on the args from the command line
    if args.book:
        print_books(args, filename)
    elif args.author:
        print_authors(args, filename)
    elif args.years:
        print_years(args, filename)

if __name__ == '__main__':
    main()
