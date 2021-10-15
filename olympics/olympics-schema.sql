'''
olympics-schema.sql
Kristin Albright
14 October 2021
'''

/*Athletes table:*/
CREATE TABLE athletes (
    id INTEGER,
    name text,
    sex text,
    height text,
    weight text,
    medal text
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
    id text,
    games text,
    year integer,
    season text,
    city text
);

/*NOC table:*/
CREATE TABLE noc (
    id text,
    abbrv text,
    region text
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
    game_id text,
    noc_id text,
    team_id INTEGER,
    event_id INTEGER
);
