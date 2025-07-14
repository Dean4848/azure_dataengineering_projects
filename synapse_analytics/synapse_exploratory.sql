


-- Count total number of records in the atheletes table
SELECT COUNT(*) AS TotalAthletes
FROM atheletes;

-- Number of atheletes per team (country)
SELECT Country, 
COUNT(*) as Number_of_Atheletes
From atheletes
GROUP BY Country 
ORDER BY Number_of_Atheletes DESC;

-- Number of atheletes per discipline
SELECT Discipline, COUNT(*) as Atheletes_count
FROM atheletes
GROUP BY Discipline
ORDER By Atheletes_count DESC

-- Number of Coaches per country
Select * FROM coaches
SELECT Country, COUNT(DISTINCT  Name) as NumberofCoaches
FROM coaches
Group BY Country
ORDER BY NumberofCoaches DESC;

-- Top 10 countries by number of discipline participated

SELECT Country, COUNT(Distinct Discipline) as Distinct_displine
FROM atheletes
GROUP BY Country
ORDER BY Distinct_displine DESC
OFFSET 0 ROWS FETCH NEXT 10 ROWS ONLY;

-- Entries by country per Discipline
SELECT Discipline, Country, COUNT(*) as Entries
FROM atheletes
GROUP BY Discipline, Country
ORDER BY Discipline ASC, Country DESC, Entries DESC

SELECT Discipline, Country, COUNT(*) as Entries
FROM atheletes
WHERE Country = 'United States of America'
GROUP BY Discipline, Country
ORDER BY Discipline ASC, Country DESC, Entries DESC

-- Checking for duplicate in atheletes names
SELECT PersonName, COUNT(*) as Occurances
FROM atheletes
GROUP BY PersonName
HAVING COUNT(*)>1

-- Team with no Coaches
SELECT DISTINCT a.Country
FROM atheletes a
LEFT JOIN coaches c ON a.Country=c.Country
WHERE c.Name is NULL;

-- Atheletes participation by country and discipline
SELECT Country, Discipline, COUNT(*) as Participants
FROM atheletes
GROUP BY Country, Discipline
ORDER BY Country, Discipline;
