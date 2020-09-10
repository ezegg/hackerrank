/*
Enter your query here.
 */
-- total number of lead managers,
-- total number of senior managers,
-- total number of managers,
-- total number of employees

SELECT
    c.company_code AS company_code,
    c.founder AS founder,
    count(distinct lm.lead_manager_code),
    count(distinct sm.senior_manager_code),
    count(distinct m.manager_code),
    count(distinct e.employee_code)
FROM
    Company AS c,
    Lead_Manager AS lm,
    Senior_Manager AS sm,
    Manager AS m,
    Employee AS e
WHERE
    c.company_code = lm.company_code
    AND c.company_code = sm.company_code
    AND c.company_code = m.company_code
    AND c.company_code = e.company_code
GROUP BY
	company_code,
	founder
ORDER BY
	company_code;