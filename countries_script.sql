-- 1. What query would you run to get all the countries that speak Slovene? Your query should return the name of the country, language and language percentage. Your query should arrange the result by language percentage in descending order. (1)


-- SELECT country.Name, Language, (percentage) 
-- FROM countrylanguage
-- JOIN country on countrylanguage.CountryCode = country.Code
-- WHERE Language = 'Slovene'
-- ORDER BY Percentage DESC;

-- 2. What query would you run to display the total number of cities for each country? Your query should return the name of the country and the total number of cities. Your query should arrange the result by the number of cities in descending order. (3)

-- SELECT country.Name, COUNT(city.CountryCode) AS Number_Of_Citys_Per_Country
-- FROM city
-- JOIN country on city.CountryCode = country.Code
-- GROUP BY country.Name
-- ORDER BY COUNT(CountryCode) DESC;

-- 3. What query would you run to get all the cities in Mexico with a population of greater than 500,000? Your query should arrange the result by population in descending order. (1)

-- SELECT city.Name, city.Population
-- FROM city
-- JOIN country ON city.CountryCode = country.Code
-- WHERE country.Code = 'MEX' AND city.Population >= 500000
-- ORDER BY Population DESC;

-- 4. What query would you run to get all languages in each country with a percentage greater than 89%? Your query should arrange the result by percentage in descending order. (1)

-- SELECT country.Name, Language, Percentage
-- FROM countrylanguage
-- JOIN country ON countrylanguage.CountryCode = country.Code
-- WHERE Percentage >= 89
-- ORDER BY countrylanguage.percentage DESC;

-- 5. What query would you run to get all the countries with Surface Area below 501 and Population greater than 100,000? (2)

-- SELECT Name, SurfaceArea, Population 
-- FROM country
-- WHERE SurfaceArea <= 501 AND Population >= 100000;

-- 6. What query would you run to get countries with only Constitutional Monarchy governments, with a capital greater than 200 and a life expectancy greater than 75 years? (1)

-- SELECT Name, GovernmentForm, Capital, LifeExpectancy
-- FROM country
-- Where GovernmentForm = 'Constitutional Monarchy' AND Capital > 200 AND LifeExpectancy > 75;

-- 7. What query would you run to get all the cities of Argentina inside the Buenos Aires district and have the population greater than 500, 000? The query should return the Country Name, City Name, District and Population. (2)

-- SELECT country.name AS Country_Name, city.name AS City_Name, city.District, city.Population
-- FROM city
-- JOIN country ON city.CountryCode = country.Code
-- where District = 'Buenos Aires' AND city.Population > 500000;

-- 8. What query would you run to summarize the number of countries in each region? The query should display the name of the region and the number of countries. Also, the query should arrange the result by the number of countries in descending order. (2)

-- SELECT  country.Region AS Region_Name, COUNT(country.Name) AS Number_of_Countries
-- FROM country
-- GROUP BY country.Region
-- ORDER BY COUNT(country.name) DESC;



