# Livro: Learning SQL

# Exercícios do Capítulo 4 - Filtering

# Exercício 4-1:

USE bank;

SELECT txn_id, txn_date, account_id, txn_type_cd, amount FROM transaction
WHERE txn_date < '2005-02-26' AND (txn_type_cd = 'DBT' OR amount > 100);

# Exercício 4-2:

SELECT * FROM transaction
WHERE account_id IN (101,103) AND NOT (txn_type_cd= 'DBT' OR amount > 100);


# Exercício 4-3:

SELECT account_id, open_date
FROM account
WHERE open_date BETWEEN '2002-01-01' AND '2002-12-31'
ORDER BY account_id;

# Exercício 4-4:

SELECT * FROM individual;
SELECT cust_id, fname, lname FROM individual
WHERE lname LIKE '_a%e%';