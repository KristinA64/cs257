--  grammy-schema.sql
-- Kristin Albright and Xinyan Xiang
-- 10 November 2021
-- The schema for grammy database

CREATE TABLE category (
    id INTEGER,
	category TEXT
);
-- \copy category FROM 'category.csv' DELIMITER ',' CSV NULL AS 'NULL'


CREATE TABLE award_year (
	id INTEGER,
	year INTEGER,
    award_title TEXT
);
-- \copy award_year FROM 'award_year.csv' DELIMITER ',' CSV NULL AS 'NULL'

CREATE TABLE nominee_award (
	id INTEGER,
	award_year_id INTEGER,
  category_id INTEGER,
  nominee_id INTEGER
);
-- \copy nominee_award FROM 'nominee_award.csv' DELIMITER ',' CSV NULL AS 'NULL'



CREATE TABLE nominee_information (
	id INTEGER,
	nominee_name TEXT,
    artist TEXT,
    workers TEXT,
    img TEXT
);
-- \copy nominee_information FROM 'nominee_information.csv' DELIMITER ',' CSV NULL AS 'NULL'
