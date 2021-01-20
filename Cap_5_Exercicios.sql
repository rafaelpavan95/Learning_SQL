# Livro: Learning SQL

# Exercícios do Capítulo 5 - Querying Multiples Table

USE bank;

# Exercício 5-1:

SELECT e.emp_id, e.fname, e.lname, b.name
FROM employee e INNER JOIN branch b
ON e.assigned_branch_id = b.branch_id;

# Exercício 5-2:

SHOW TABLES;
SELECT * FROM account;
SELECT * FROM customer;
SELECT * FROM product;

SELECT a.account_id, c.fed_id, p.name
FROM account a INNER JOIN customer c
ON c.cust_id = a.account_id
INNER JOIN product p
ON p.product_cd = a.product_cd
WHERE c.cust_type_cd = 'I';

# Exercício 5-3:

SHOW TABLES;
SELECT * FROM employee;

SELECT e.emp_id, e.fname, e.lname
FROM employee e INNER JOIN employee manager
ON e.superior_emp_id = manager.emp_id;
WHERE e.dept_id != manager.dept_id;