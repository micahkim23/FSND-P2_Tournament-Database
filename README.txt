This is the README.txt file for the tournament database that stores game matches between players. 

1. To set up the database, you have to enter into the virtual machine and type psql -f tournament.sql into the command line. Then, you can just type in the sql commands into the command line that are located in the tournament.sql file. Then, the database will be set up.

2. To run the test, you have to change directories to the \vagrant\tournament folder. Then type python tournament_test.py into the command line to run the tests.

3. I used the psycopg2 python-DB sql library in order to create the database and interact with the database using my python code.