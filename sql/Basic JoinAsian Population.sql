-- select * from city limit 1;
-- select * from country limit 1;

select sum(city.population) from city join country on city.countrycode = country.code where country.continent = 'Asia';