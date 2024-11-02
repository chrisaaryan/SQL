CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
      # Write your MySQL query statement below.
       select (select salary from (select *, dense_rank() over(order by salary desc) as rn
       from employee) as sq where rn = N limit 1) as sal
);
END

-- CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
-- BEGIN
--     RETURN (
--         SELECT salary
--         FROM (
--             SELECT salary, DENSE_RANK() OVER (ORDER BY salary DESC) AS rn
--             FROM employee
--         ) AS ranked
--         WHERE rn = N
--         LIMIT 1
--     );
-- END 
