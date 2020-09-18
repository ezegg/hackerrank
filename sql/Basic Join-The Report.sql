SELECT IF (Grades.Grade > 7, Students.Name, NULL) AS Sname, Grades.Grade, Students.Marks FROM Students
INNER JOIN Grades ON Students.Marks BETWEEN Grades.Min_Mark AND Max_Mark
ORDER BY Grades.Grade DESC, Sname ASC, Students.Marks ASC;
-- select (select replace(truncate(marks, -1), '0', '')) as grade from students limit 10;
-- select if(replace(truncate(marks, -1), '0', '') < 8, null, name) as grade from students limit 10;
-- select if(replace(truncate(marks, -1), '0', '') < 8, null, name) as name, (select replace(truncate(marks, -1), '0', '')) as grade, marks from students where (replace(truncate(marks, -1), '0', '') >= 8) order by grade desc, name asc;
-- select if(replace(truncate(marks, -1), '0', '') < 8, null, name) as name, (select replace(truncate(marks, -1), '0', '')) as grade, marks from students where (replace(truncate(marks, -1), '0', '') < 8) order by grade desc , marks asc;