# Livro: Learning SQL

# Exercício 3-1

USE bank;

SELECT * FROM employee;

SELECT emp_id, fname, lname FROM employee ORDER BY lname, fname;

# Exercício 3-2

SELECT * FROM product;

SELECT account_id, cust_id, avail_balance FROM account WHERE (status='ACTIVE' OR avail_balance > 2500);

# Exercício 3-3

SELECT DISTINCT open_emp_id FROM account;

# Exercício 3-4

SELECT * FROM product;

SELECT p.product_cd, a.cust_id, a.avail_balance
FROM product p INNER JOIN account a
ON p.product_cd = a.product_cd
WHERE p.product_type_cd = 'ACCOUNT'
ORDER BY p.product_cd, a.cust_id;






