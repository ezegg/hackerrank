-- select count(*), count(*)+1, (count(*)+1)/2 from station; 499 500 250.0000
-- select
--     x.lat_n,y.lat_n,
--     y.lat_n-x.lat_n,
--     sign(y.lat_n-x.lat_n),
--     sign(1-sign(y.lat_n-x.lat_n)) as total from station x, station y;
select round(x.lat_n,4) from station x, station y
group by x.lat_n
having sum(sign(1-sign(y.lat_n-x.lat_n))) = (count(*)+1)/2;