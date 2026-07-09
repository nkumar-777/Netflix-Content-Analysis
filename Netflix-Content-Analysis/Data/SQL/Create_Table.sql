
-- Create Table : netflix_titles
-- Database     : netflix_analysis


CREATE TABLE netflix_titles (

    show_id VARCHAR(10) PRIMARY KEY,

    type VARCHAR(20),

    title VARCHAR(255),

    director TEXT,

    cast TEXT,

    country TEXT,

    date_added DATE,

    release_year INT,

    rating VARCHAR(20),

    duration VARCHAR(30),

    listed_in TEXT,

    description TEXT

);