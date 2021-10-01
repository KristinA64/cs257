'''
   booksdatasourcetest.py
   Jeff Ondich, 24 September 2021

   Jayti Arora, Kristin Albright, 27 September 2021
'''

import booksdatasource
import unittest

class BooksDataSourceTester(unittest.TestCase):
    def setUp(self):
        self.data_source = booksdatasource.BooksDataSource('books1.csv')

    def tearDown(self):
        pass

    def test_unique_author(self):
        authors = self.data_source.authors('Pratchett')
        self.assertTrue(len(authors) == 1)
        self.assertTrue(authors[0] == Author('Pratchett', 'Terry'))
        '''
        should do booksdatasource.Author(...) instead of Author(...)
        not the datasource, but the module has a class Author
        can also get rid of the import and won't need to have booksdatasource.
        '''

    '''
        Author Tests
    '''

    def test_blank_author(self):
        self.data_source = booksdatasource.BooksDataSource('books_medium.csv')
        authors = self.data_source.authors()
        self.assertTrue(len(authors) == 11)

    def test_authors(self):
        authors = self.data_source.authors('Jane Austen')
        self.assertTrue(Author('Austen', 'Jane') in authors)

    def test_sorted_authors(self):
        authors = self.data_source.authors('te')
        self.assertTrue(authors[0] == Author('Austen', 'Jane'))

    '''
       Book Tests
    '''

    def test_blank_books(self):
        self.data_source = booksdatasource.BooksDataSource('books_medium.csv')
        books = self.data_source.books()
        self.assertTrue(len(books) == 10)

    def test_books(self):
        books = self.data_source.books('Sula', 'year')
        self.assertTrue(Book('Sula', 1973, [Author('Morrison', 'Toni')]) in books)

    def test_sorted_title(self):
        books = self.data_source.books('There', 'title')
        self.assertTrue(books[0] == Book('And Then There Were None', 1939, [Author('Christie', 'Agatha')]))

    def test_sorted_year(self):
        books = self.data_source.books('the', 'year')
        self.assertTrue(books[0] == Book('The Life and Opinions of Tristram Shandy, Gentleman', 1759, [Author('Sterne', 'Laurence')]))

    '''
       Between Years Tests
    '''

    def test_blank_years(self):
        self.data_source = booksdatasource.BooksDataSource('books_medium.csv')
        books = self.data_source.books()
        self.assertTrue(len(books) == 10)

    def test_no_books(self):
        books = self.data_source.books(1500, 1550)
        self.assertFalse(books)

    def test_inclusive(self):
        books = self.data_source.books(1700, 1759)
        self.assertTrue(books)

    def test_sorted(self):
        books = self.data_source.books(1813, 1815)
        self.assertTrue(books[0] == Book('Pride and Prejudice', 1813, [Author('Austen', 'Jane')]))
        self.assertTrue(books[1] == Book('Sense and Sensibility', 1813, [Author('Austen', 'Jane')]))









if __name__ == '__main__':
    unittest.main()
