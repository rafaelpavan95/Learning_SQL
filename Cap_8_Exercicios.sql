# Livro: Learning SQL

# Exercícios do Capítulo 8 - Grouping and Aggregates

USE bank;
SELECT * FROM account;

# Exercício 8.1

SELECT COUNT(*) FROM account;

# Exercício 8.2

SELECT cust_id, COUNT(*) AS CONTA
FROM account
GROUP BY cust_id;

# Exercício 8.3

SELECT cust_id, COUNT(*) as cont
FROM account
GROUP BY cust_id
HAVING CONT >= 2;

# Exercício 8.4

SELECT product_cd, open_branch_id, SUM(avail_balance) as total
FROM account
GROUP BY product_cd, open_branch_id
HAVING COUNT(*) > 1
ORDER BY total DESC;
