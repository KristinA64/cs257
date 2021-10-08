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
    parser.add_argument("-a", '--author', nargs="*", const=None, help="Given a string, prints the list of authors in the dataset whose names contains that string, sorted by last name.")
    parser.add_argument("-b", "--book", nargs="*", const=None, help="Given a string, prints the list of books in the dataset whose titles contain that string.")
    parser.add_argument("-y","--years", nargs="+", type=int, const=None, help="Given 2 integers, prints the list of books in the dataset which were published between the years of the integers inclusive.")

    #parse the arguments
    args = parser.parse_args()
    return args

def print_books(args, filename, sort_method):
    #add third param for sorting
    books = BooksDataSource(filename)
    #call booksdata source books function on parameter --book
    book_list = books.books(args.book)
    for book in book_list:
        authors = book.authors
        format_author = ""
        for name in authors:
            if name.death_year:
                format_author = name.given_name + " " + name.surname + " " + "(" + name.birth_year + "-" + name.death_year + ")"
            else:
                format_author = name.given_name + " " + name.surname + " " + name.birth_year + "-)"
        print(book.title, book.publication_year, format_author)
    pass

def print_authors(args, filename):
    #calls booksdata source author function on parameter --author
    author_list = books.authors(args.author)
    for author in author_list:
        if author.death_year:
            format_author = author.given_name + " " + author.surname + "(" + author.birth_year + "-" + author.death_year + ")"
        else:
            format_author = author.given_name + " " + author.surname + "(" + author.birth_year + "-)"
        print(format_author)
    pass

def print_years(args, filename)
    if len(args.years) == 2:
        book_list = books.books_between_years(args.years[0],args.years[1])
    else:
        book_list = books.books_between_years(args.years[0])
    for book in book_list:
        authors = book.authors
        format_author = ""
        for name in authors:
            if name.death_year:
                format_author = name.given_name + " " + name.surname + " " + "(" + name.birth_year + "-" + name.death_year + ")"
            else:
                format_author = name.given_name + " " + name.surname + " " + name.birth_year + "-)"
        print(book.title, book.publication_year, format_author)
    pass

def main():
    args = parse()
    filename = args[0]
    if args.book:
        print_books(args, filename, 'title')
    elif args.author:
        print_authors(args, filename)
    elif args.year:
        print_years(args, filename)

if __name__ == '__main__':
    main()