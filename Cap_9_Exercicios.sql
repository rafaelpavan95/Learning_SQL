# Livro: Learning SQL

# Exercícios do Capítulo 9 - Subqueries

USE bank;

# Exercício 9.1

SELECT account_id, product_cd, cust_id, avail_balance
FROM account
WHERE product_cd IN (SELECT product_cd 
FROM product WHERE product_type_cd = 'Loan');

# Exercício 9.2

SELECT a.account_id, a.product_cd, a.cust_id, a.avail_balance
FROM account a
WHERE EXISTS (SELECT TRUE FROM product p 
WHERE p.product_cd = a.product_cd
AND p.product_type_cd = 'LOAN');

# Exercício 9.3

SELECT e.emp_id, e.fname, e.lname, hier.cargo
FROM employee e INNER JOIN 
(SELECT 'trainee' cargo, '2004-01-01' start_dt, '2005-12-31' end_dt
UNION ALL
SELECT 'worker' cargo, '2002-01-01' start_dt, '2003-12-31' end_dt
UNION ALL
SELECT 'mentor' cargo, '2000-01-01' start_dt, '2001-12-31' end_dt) hier
ON e.start_date BETWEEN hier.start_dt AND hier.end_dt;

# Exercício 9.4

SELECT e.emp_id, e.fname, e.lname, (SELECT d.name FROM department d
WHERE d.dept_id = e.dept_id) as dep_name, (SELECT b.name 
FROM branch b WHERE b.branch_id = e.assigned_branch_id) as branch_name
FROM employee e;

