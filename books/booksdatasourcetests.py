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
    def test_blank_input(self):
       self.assertTrue(self.data_source.authors('') == "Please input a string")

    def test_abbr_author(self):
        authors = self.data_source.authors('VE Schwab')
        self.assertTrue(Author('Schwab', 'V.E.') in authors)

    def test_authors(self):
        authors = self.data_source.authors('Jane Austen')
        self.assertTrue(Author('Austen', 'Jane') in authors)

    
    


    

if __name__ == '__main__':
    unittest.main()

