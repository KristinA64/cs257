Setting up the grammy awards database
CS257 Software Design
Fall 2021
Kristin Albright & Xinyan Xiang

How to set up our grammy data so you can run our web application.

1. Creating the database.

    $ psql -U YOUR_PSQL_USER_NAME postgres
    postgres=# CREATE DATABASE grammy;

or just

    $ createdb grammy

(where $ is a Unix prompt, and postgres=# is a psql prompt).

2. Populating the database.

    $ psql -U YOUR_PSQL_USER_NAME grammy < data.sql

