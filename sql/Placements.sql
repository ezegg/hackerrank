SELECT
    s.name
FROM
    students AS s
    JOIN friends AS f ON s.id = f.id
    JOIN packages AS p ON p.id = f.id
    JOIN packages AS bfp ON bfp.id = f.friend_id
WHERE
	bfp.salary > p.salary
ORDER BY
	bfp.salary