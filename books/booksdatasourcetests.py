'''
   booksdatasourcetest.py
   Jeff Ondich, 24 September 2021

   Jayti Arora, Kristin Albright, 2 October 2021
'''

'''
IMPORTANT NOTICE:

Test file creates copies of the csv file for reasons that Jayti, Kristin, nor
a lab assistant were able to figure out. Jeff has been notified of this issue.


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
        print(len(authors))
        for author in authors:
            #print(author.given_name)
            self.assertEqual(author, booksdatasource.Author('Pratchett', 'Terry'))
        self.assertTrue(authors[0] == booksdatasource.Author('Pratchett', 'Terry'))


    def test_blank_author(self):
        authors = self.data_source.authors()
        self.assertTrue(authors)

    def test_authors(self):
        authors = self.data_source.authors('Jane')
        for author in authors:
            print(author.given_name)
        self.assertTrue(booksdatasource.Author('Austen', 'Jane') in authors)

    def test_sorted_authors(self):
        authors = self.data_source.authors('te')

        self.assertTrue(authors[0] == booksdatasource.Author('Austen', 'Jane'))

    '''
       Book Tests

    '''

    def test_blank_books(self):
        books = self.data_source.books()
        self.assertTrue(books)

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
        #self.data_source = booksdatasource.BooksDataSource('books_medium.csv')
        allBooks = self.data_source.books()
        books = self.data_source.books_between_years()
        self.assertEqual(books, allBooks)

    def test_no_books(self):
        books = self.data_source.books_between_years(1500, 1550)
        #print(books[0].title)
        self.assertFalse(books)

    def test_inclusive(self):
        books = self.data_source.books_between_years(1700, 1759)
        self.assertTrue(books)

    def test_sorted(self):
        books = self.data_source.books_between_years(1813, 1815)
        self.assertTrue(books[0] == booksdatasource.Book('Pride and Prejudice', 1813, [booksdatasource.Author('Austen', 'Jane')]))








if __name__ == '__main__':
    unittest.main()
