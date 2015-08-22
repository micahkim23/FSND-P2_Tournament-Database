# Tournament Database

##About

Database schema that stores game matches between players. It interacts with a Python module to rank players and pair them up in matches in a swiss style tournament.

This app is run on:

1. psycopg2 python-DB sql library
2. python 2.7.6

## Setup Database

To set up the database, you have to enter into the virtual machine and type psql -f tournament.sql into the command line. Then, you can just type in the sql commands into the command line that are located in the tournament.sql file. Then, the database will be set up.

## Test Database for tournament

To run the test, you have to change directories to the \vagrant\tournament folder. Then type python tournament_test.py into the command line to run the tests.



1. psycopg2 python-DB sql library
2. python 2.7.6
