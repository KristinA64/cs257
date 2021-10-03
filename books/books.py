import argparse
import booksdatasource

#initialize the parser
parser = argparse.ArgumentParser()

#add parameters
parser.add_argument("-a", '--author', help="Given a string, prints the list of books in the dataset whose authors name contains that string, sorted by last name.")
parser.add_argument("-b", "--book", help="Given a string, prints the list of books in the dataset whose titles contain that string.")
parser.add_argument("-y","--years", help="Given 2 integers, prints the list of books in the dataset which were published between the years of the integers inclusive.", type=int)
parser.add_argument("-u", "--usage", help="Prints the usage statement")

#parse the arguments
args = parser.parse_args()

print(args) #prints args correctly

#send in args
if "--book" != None:
  print("1")
  #call booksdata source books function on parameter --book
  #need to add a search text arguement and if that is not none, also send that in
elif "--author" != None:
  print("2")
  #call booksdata source author function on parameter --author
elif "--year" != None:
  print("3")
  #year is only 1 arguement so how do we get end year?
elif "--usage" != None:
  print("4)
  #print usage.txt - do we need to import it?