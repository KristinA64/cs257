'''
olympics-schema.sql
Kristin Albright
19 October 2021
'''

/*Athletes table:*/
CREATE TABLE athletes (
    id INTEGER,
    name text
);

/*Sports table:*/
CREATE TABLE sports (
    id INTEGER,
    sport text
);

/*Cities table:*/
CREATE TABLE cities (
    id INTEGER,
    city text
);

/*Games table:*/
CREATE TABLE games (
    id INTEGER,
    games text
);

/*NOC table:*/
CREATE TABLE noc (
    id INTEGER,
    abbrv text
);
/*Regions table:*/
CREATE TABLE noc_regions (
    abbrv text,
    region text,
    notes text
);

/*Teams table:*/
CREATE TABLE teams (
    id INTEGER,
    team text
);

/*Events table:*/
CREATE TABLE events (
    id INTEGER,
    event text
);

/*Athletes info table:*/
CREATE TABLE athletes_info (
    athlete_id INTEGER,
    sport_id INTEGER,
    city_id INTEGER,
    game_id INTEGER,
    noc_id INTEGER,
    team_id INTEGER,
    event_id INTEGER,
    year INTEGER,
    sex text,
    medal text
);
