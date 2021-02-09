# EXERCÍCIOS DO CAPÍTULO 10 - JOINS REVISITED

# EXERCÍCIO 1

USE bank

# EXERCÍCIO 1

SELECT p.product_cd, a.account_id, a.avail_balance, a.cust_id
FROM product p LEFT OUTER JOIN account a
ON p.product_cd = a.product_cd;

# EXERCÍCIO 2

SELECT p.product_cd, a.account_id, a.avail_balance, a.cust_id
FROM account a RIGHT OUTER JOIN product p
ON p.product_cd = a.product_cd;

# EXERCÍCIO 3

SELECT a.account_id, a.product_cd, i.fname, i.lname, b.name
FROM account a LEFT OUTER JOIN business b
ON a.cust_id = b.cust_id
LEFT OUTER JOIN individual i
ON a.cust_id = i.cust_id;

# EXERCÍCIO 4


SELECT unidades.x + dezenas.x + 1 AS CONJUNTO
# CRIA DADOS DE 1 A 9
FROM (
SELECT 0 x UNION ALL
SELECT 1 x UNION ALL
SELECT 2 x UNION ALL
SELECT 3 x UNION ALL
SELECT 4 x UNION ALL
SELECT 5 x UNION ALL
SELECT 6 x UNION ALL
SELECT 7 x UNION ALL
SELECT 8 x UNION ALL
SELECT 9 x) unidades
CROSS JOIN (
SELECT 0 x UNION ALL
SELECT 10 x UNION ALL
SELECT 20 x UNION ALL
SELECT 30 x UNION ALL
SELECT 40 x UNION ALL
SELECT 50 x UNION ALL
SELECT 60 x UNION ALL
SELECT 70 x UNION ALL
SELECT 80 x UNION ALL
SELECT 90 x) dezenas
ORDER BY CONJUNTO ASC;