-- select round(avg(city.population)) as population from country join city on country.code = city.countrycode group by country.continent;

-- select country.continent, city.name from country join city on country.code = city.countrycode group by country.continent;

select country.continent, round(avg(city.population)) from city join country on country.code = city.countrycode group by country.continent