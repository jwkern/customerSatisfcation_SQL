/*______________________________________________________________________________
CODE DESCRIPTION: 

This SQL code (customerSatisfaction_JWK.sql) calculates the average customer satisfaction
rating for various time periods of a fictious customer database. 


Written by: Joshua W. Kern
Date: 02/26/24                                                                  
________________________________________________________________________________*/

/*______________________________________________________________________________
Step 0: Initialize the database
________________________________________________________________________________*/
DROP DATABASE IF EXISTS Misc;
CREATE DATABASE Misc;
USE Misc;



/*______________________________________________________________________________
Step 1: Initialize the data tables
________________________________________________________________________________*/
CREATE TABLE ratings2024_janWeek01 (
        gender TEXT,
        title TEXT,
        first_name TEXT,
        last_name TEXT,
        birth_date DATE,
        state TEXT,
        email TEXT,
        rating INTEGER
);


CREATE TABLE ratings2024_janWeek02 (
        gender TEXT,
        title TEXT,
        first_name TEXT,
        last_name TEXT,
        birth_date DATE,
        state TEXT,
        email TEXT,
        rating INTEGER
);

CREATE TABLE ratings2024_janWeek03 (
        gender TEXT,
        title TEXT,
        first_name TEXT,
        last_name TEXT,
        birth_date DATE,
        state TEXT,
        email TEXT,
        rating INTEGER
);




/*______________________________________________________________________________
Step 2: Load the data into the tables
________________________________________________________________________________*/
LOAD DATA LOCAL INFILE '/home/jwkern/Downloads/jan2024_wk01.csv' REPLACE INTO TABLE ratings2024_janWeek01 FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 rows;
LOAD DATA LOCAL INFILE '/home/jwkern/Downloads/jan2024_wk02.csv' REPLACE INTO TABLE ratings2024_janWeek02 FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 rows;
LOAD DATA LOCAL INFILE '/home/jwkern/Downloads/jan2024_wk03.csv' REPLACE INTO TABLE ratings2024_janWeek03 FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 rows;

/*DECLARE @avgRating_janWeek01 AS FLOAT;
DECLARE @avgRating_janWeek02 AS FLOAT;
DECLARE @avgRating_janWeek03 AS FLOAT;
*/
SET @avgRating_janWeek01 = (SELECT AVG(rating) FROM ratings2024_janWeek01);
SET @avgRating_janWeek02 = (SELECT AVG(rating) FROM ratings2024_janWeek02);
SET @avgRating_janWeek03 = (SELECT AVG(rating) FROM ratings2024_janWeek03);

CREATE TABLE allRatings2024 AS SELECT gender,
		title,
		first_name,
		last_name,
		birth_date,
		state,
		email, 
		rating 
	FROM ratings2024_janWeek01
	UNION 
	SELECT gender,
		title,
		first_name,
		last_name,
		birth_date,
		state,
		email,
		rating 
	FROM ratings2024_janWeek02
	UNION
	SELECT gender,
		title,
		first_name,
		last_name,
		birth_date,
		state,
		email,
		rating
	FROM ratings2024_janWeek03;


SET @avgRating_2024 = (SELECT AVG(rating) FROM allRatings2024);


SELECT ROUND(@avgRating_janWeek01,1) AS January_Week01, 
	ROUND(@avgRating_janWeek02,1) AS January_Week02, 
	ROUND(@avgRating_janWeek03,1) AS January_Week03, 
	ROUND(@avgRating_2024,1) AS Total_Rating_2024;





