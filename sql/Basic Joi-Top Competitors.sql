/*
Enter your query here.
 */
-- select * from hackers limit 3;
-- select * from difficulty limit 3;
-- select * from challenges limit 3;
-- select * from submissions limit 3;
-- select h.hacker_id, h.name from hackers as h join  limit 3
-- SELECT
--     s.hacker_id,
--     h.name,
--     s.score,
--     count(1)
-- FROM
--     submissions AS s
--     JOIN hackers AS h ON s.hacker_id = h.hacker_id
-- WHERE
--     s.score = (
--         SELECT
--             MAX(s2.score)
--         FROM
--             submissions s2
--         WHERE
--             s.challenge_id = s2.challenge_id)
--     GROUP BY
--         s.challenge_id,
--         h.hacker_id,
--         h.name,
--         s.score
--     ORDER BY
--         s.hacker_id;

SELECT
	h.hacker_id,
	h.name
FROM
	submissions s
	INNER JOIN challenges c ON s.challenge_id = c.challenge_id
	INNER JOIN difficulty d ON c.difficulty_level = d.difficulty_level
	INNER JOIN hackers h ON s.hacker_id = h.hacker_id
WHERE
	s.score = d.score
	AND c.difficulty_level = d.difficulty_level
GROUP BY
	h.hacker_id,
	h.name
HAVING
	count(s.hacker_id) > 1
ORDER BY
	count(s.hacker_id)
	DESC,
	s.hacker_id ASC