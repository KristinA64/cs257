'''
   booksdatasourcetest.py
   Jeff Ondich, 24 September 2021

   Jayti Arora, Kristin Albright, 11 October 2021

'''

import booksdatasource
import unittest

class BooksDataSourceTester(unittest.TestCase):
    def setUp(self):
        self.data_source = booksdatasource.BooksDataSource('books_medium.csv')

    def tearDown(self):
        pass


    def test_unique_author(self):
        authors = self.data_source.authors('Pratchett')
        for author in authors:
            self.assertEqual(author, booksdatasource.Author('Pratchett', 'Terry'))
        self.assertTrue(authors[0] == booksdatasource.Author('Pratchett', 'Terry'))
        self.assertTrue(len(authors) == 1)


    def test_blank_author(self):
        authors = self.data_source.authors()
        self.assertTrue(len(authors) == 8)

    def test_authors(self):
        authors = self.data_source.authors('Jane')
        self.assertTrue(booksdatasource.Author('Austen', 'Jane') in authors)
        self.assertTrue(len(authors) == 1)

    def test_sorted_authors(self):
        authors = self.data_source.authors('te')
        self.assertTrue(authors[0] == booksdatasource.Author('Austen', 'Jane'))
        self.assertTrue(len(authors) == 3)

    '''
       Book Tests

    '''

    def test_blank_books(self):
        books = self.data_source.books()
        self.assertTrue(books)
        self.assertTrue(len(books) == 10)

    def test_books(self):
        books = self.data_source.books('Sula', 'year')
        self.assertTrue(booksdatasource.Book('Sula', 1973, [booksdatasource.Author('Morrison', 'Toni')]) in books)

    def test_sorted_title(self):
        books = self.data_source.books('There', 'title')
        self.assertTrue(books[0] == booksdatasource.Book('And Then There Were None', 1939, [booksdatasource.Author('Christie', 'Agatha')]))

    def test_sorted_year(self):
        books = self.data_source.books('the', 'year')
        self.assertTrue(books[0] == booksdatasource.Book('The Life and Opinions of Tristram Shandy, Gentleman', 1759, [booksdatasource.Author('Sterne', 'Laurence')]))

    '''
        Between Years Tests

    '''
    def test_blank_years(self):
        books = self.data_source.books_between_years()
        self.assertTrue(len(books) == 10)

    def test_no_books(self):
        books = self.data_source.books_between_years(1500, 1550)
        self.assertTrue(len(books) == 0)
        self.assertFalse(books)

    def test_inclusive(self):
        books = self.data_source.books_between_years(1700, 1759)
        self.assertTrue(books)
        self.assertTrue(len(books) == 1)

    def test_sorted(self):
        books = self.data_source.books_between_years(1813, 1815)
        self.assertTrue(books[0] == booksdatasource.Book('Pride and Prejudice', 1813, [booksdatasource.Author('Austen', 'Jane')]))
        self.assertTrue(books[1] == booksdatasource.Book('Sense and Sensibility', 1813, [booksdatasource.Author('Austen', 'Jane')]))
        self.assertTrue(books[2] == booksdatasource.Book('Emma', 1815, [booksdatasource.Author('Austen', 'Jane')]))









if __name__ == '__main__':
    unittest.main()
