import argparse
import booksdatasource


parser = argparse.ArgumentParser()
parser.parse_args()
parser.add_argument("-a", help="Given a string, print the list of books in the dataset whose authors name contains that string.")
parser.add_argument("-b", help="Given a string, print the list of books in the dataset whose titles contain that string.")
parser.add_argument("-y", help="Given 2 integers, print the list of books in the dataset which were published between the years of the integers.")
parser.add_argument("-u", help="Prints the usage statement")

args = parsers.parse_args()
