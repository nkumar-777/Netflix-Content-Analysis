
-- PROJECT : Netflix Content Analysis
-- Author  : Nikhil Kumar
-- Database: netflix_analysis
-- Tool    : MySQL Workbench


USE netflix_analysis;


SECTION 1 : KPI ANALYSIS

-- Query 1 : Total Titles

SELECT COUNT(*) AS Total_Titles
FROM netflix_titles;


-- Query 2 : Total Movies

SELECT COUNT(*) AS Total_Movies
FROM netflix_titles
WHERE type = 'Movie';


-- Query 3 : Total TV Shows

SELECT COUNT(*) AS Total_TV_Shows
FROM netflix_titles
WHERE type = 'TV Show';


-- Query 4 : Total Countries

SELECT COUNT(DISTINCT country) AS Total_Countries
FROM netflix_titles
WHERE country IS NOT NULL
AND country <> 'UNKNOWN';

SECTION 2 : DASHBOARD ANALYSIS


-- Query 5 : Movies vs TV Shows


SELECT
    type,
    COUNT(*) AS Total_Content
FROM netflix_titles
GROUP BY type;


-- Query 6 : Top 10 Countries


SELECT
    country,
    COUNT(*) AS Total_Content
FROM netflix_titles
WHERE country IS NOT NULL
AND country <> 'UNKNOWN'
GROUP BY country
ORDER BY Total_Content DESC
LIMIT 10;


-- Query 7 : Titles Released by Year


SELECT
    release_year,
    COUNT(*) AS Total_Content
FROM netflix_titles
GROUP BY release_year
ORDER BY release_year;


-- Query 8 : Rating Distribution

SELECT
    rating,
    COUNT(*) AS Total_Content
FROM netflix_titles
WHERE rating IS NOT NULL
AND rating <> 'UNKNOWN'
GROUP BY rating
ORDER BY Total_Content DESC;

-- Query 9 : Top Genre Combinations

SELECT
    listed_in,
    COUNT(*) AS Total_Content
FROM netflix_titles
GROUP BY listed_in
ORDER BY Total_Content DESC
LIMIT 10;


-- Query 10 : Years with Most Content Released


SELECT
    release_year,
    COUNT(*) AS Total_Content
FROM netflix_titles
GROUP BY release_year
ORDER BY Total_Content DESC
LIMIT 10;


SECTION 3 : ADVANCED SQL ANALYSIS


-- Query 11 : Top 10 Directors by Number of Titles
-- Objective : Identify directors with the highest number of titles.


SELECT
    director,
    COUNT(*) AS Total_Titles
FROM netflix_titles
WHERE director IS NOT NULL
AND director <> 'UNKNOWN'
GROUP BY director
ORDER BY Total_Titles DESC
LIMIT 10;




-- Query 12 : Top 10 Actors by Number of Titles
-- Objective : Identify actors appearing most frequently.
-- Note : Since multiple actors exist in one field, this query ranks the most common actor. combinations.

SELECT
    `cast`,
    COUNT(*) AS Total_Titles
FROM netflix_titles
WHERE `cast` IS NOT NULL
AND `cast` <> 'UNKNOWN'
GROUP BY `cast`
ORDER BY Total_Titles DESC
LIMIT 10;


-- Query 13 : Longest Movies
-- Objective : Find movies having the longest duration.

SELECT
    title,
    duration
FROM netflix_titles
WHERE type='Movie'
ORDER BY
CAST(REPLACE(duration,' min','') AS UNSIGNED) DESC
LIMIT 10;



-- Query 14 : Movies Released After 2015
-- Objective : Analyze recent movie releases.

SELECT
    title,
    release_year,
    country
FROM netflix_titles
WHERE type='Movie'
AND release_year > 2015
ORDER BY release_year DESC;



-- Query 15 : Percentage of Movies vs TV Shows
-- Objective : Calculate percentage share.

SELECT
    type,
    COUNT(*) AS Total_Content,
    ROUND(
        COUNT(*) *100/
        (SELECT COUNT(*) FROM netflix_titles),
        2
    ) AS Percentage
FROM netflix_titles
GROUP BY type;



-- Query 16 : Rank Countries by Number of Titles
-- Objective : Demonstrate RANK() Window Function.

SELECT
    country,
    COUNT(*) AS Total_Content,
    RANK() OVER(
        ORDER BY COUNT(*) DESC
    ) AS Country_Rank
FROM netflix_titles
WHERE country IS NOT NULL
AND country <> 'UNKNOWN'
GROUP BY country;



-- Query 17 : Dense Rank Release Years
-- Objective : Rank release years based on content count.

SELECT
    release_year,
    COUNT(*) AS Total_Content,
    DENSE_RANK() OVER(
        ORDER BY COUNT(*) DESC
    ) AS Year_Rank
FROM netflix_titles
GROUP BY release_year;



-- Query 18 : Running Total of Titles Released
-- Objective : Demonstrate SUM() OVER().

SELECT
    release_year,
    COUNT(*) AS Total_Content,
    SUM(COUNT(*))
    OVER(
        ORDER BY release_year
    ) AS Running_Total
FROM netflix_titles
GROUP BY release_year;



-- Query 19 : Year-over-Year Growth
-- Objective : Demonstrate LAG() function.

WITH yearly_content AS
(
SELECT
    release_year,
    COUNT(*) AS Total_Content
FROM netflix_titles
GROUP BY release_year
)

SELECT
    release_year,
    Total_Content,
    LAG(Total_Content)
    OVER(
        ORDER BY release_year
    ) AS Previous_Year,
    Total_Content -
    LAG(Total_Content)
    OVER(
        ORDER BY release_year
    ) AS Growth
FROM yearly_content;



-- Query 20 : Top Performing Country Using CTE
-- Objective : Demonstrate Common Table Expression (CTE).

WITH country_titles AS
(
SELECT
    country,
    COUNT(*) AS Total_Content
FROM netflix_titles
WHERE country IS NOT NULL
AND country <> 'UNKNOWN'
GROUP BY country
)

SELECT *
FROM country_titles
ORDER BY Total_Content DESC
LIMIT 10;
