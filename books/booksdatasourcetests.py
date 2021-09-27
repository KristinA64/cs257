'''
   booksdatasourcetest.py
   Jeff Ondich, 24 September 2021
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
        Author Tests
    '''
    def test_blank_author(self):
    

    def test_abbr_author(self):
        authors = self.data_source.authors('VE Schwab')
        self.assertTrue(Author('Schwab', 'V.E.') in authors)

    def test_authors(self):
        authors = self.data_source.authors('Jane Austen')
        self.assertTrue(Author('Austen', 'Jane') in authors)

   '''
       Book Tests
   '''
    def test_blank_books(self):
   

    def test_books(self):
        books = self.data_source.books('Sula', 'year')
        self.assertTrue(Book('Sula', 1973, Author('Morrison', 'Tony')) in books)

    def test_sorted_books(self):
      books = self.data_source.books('There', 'title')
      self.assertTrue(books[0] == Book('And Then There Were None', 1939, Author('Christie', 'Agatha')))


    def test_comma_books(self):
      books = self.data_source.books('fine thanks', 'title')
      self.assertTrue(Book('Fine, Thanks', 2019, Author('Dunnewold', 'Mary')) in books)
    
    '''
       Between Years Tests
    '''
    def test_blank_years(self):

    def test_no_books(self):
        books = self.data_source.books(1500, 1550)
        self.assertFalse(books)

    def test_inclusive(self):
        books = self.data_source.books(1700, 1759)
        self.assertTrue(books)

    def test_sorted(self):
        books = self.data_source.books(1813, 1815)
        self.assertTrue(books[0] = Book('Pride and Prejudice', 1813, Author('Austen', 'Jane')))
        self.assertTrue(books[1] = Book('Sense and Sensibility', 1813, Author('Austen', 'Jane')))




    


    

if __name__ == '__main__':
    unittest.main()

