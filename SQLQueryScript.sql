-- CREATE DATABASE
CREATE DATABASE OlympicTokyo
GO

USE OlympicTokyo
GO

-- SQL Script using in TokyoOlympicsDataAnalysis.ipynb file --
-- CREATE TABLE
/*
CREATE TABLE teams(TeamName VARCHAR(50), Discipline VARCHAR(50), Country VARCHAR(50), Event VARCHAR(50))
CREATE TABLE coaches(Name VARCHAR(50), Country VARCHAR(50), Discipline VARCHAR(50), Event VARCHAR(50))
CREATE TABLE athletes(Name VARCHAR(50), Country VARCHAR(50), Discipline VARCHAR(50))
CREATE TABLE gender(Discipline VARCHAR(50), Female INT, Male INT, Total INT)
CREATE TABLE medals(Rank INT, TeamCountry VARCHAR(50), Gold INT, Silver INT, Bronze INT, Total INT, RankByTotal INT)
*/

-- INSERT DATA INTO TABLE
/*
INSERT INTO teams VALUES('%s', '%s', '%s', '%s')
INSERT INTO coaches VALUES('%s', '%s', '%s', '%s')
INSERT INTO athletes VALUES('%s', '%s', '%s')
INSERT INTO gender VALUES('%s', '%g', '%g', '%g')
INSERT INTO medals VALUES('%g', '%s', '%g', '%g', '%g', '%g', '%g')
*/

-- QUERY DATA
-- 1. Number of participants in each country
SELECT TOP 20
	Country
	, COUNT(*) AS NumOfAthletes
FROM athletes
GROUP BY Country
ORDER BY COUNT(*) DESC

-- 2. Number of Athletes by Discipline
SELECT
	Discipline
	, COUNT(*) AS NumOfAthletes
FROM athletes
GROUP BY Discipline
ORDER BY COUNT(*) DESC

-- 3. Top 20 countries in terms of number of Coaches
SELECT TOP 20
	Country
	, COUNT(*) AS NumOfCoach
FROM coaches
GROUP BY Country
ORDER BY COUNT(*) DESC