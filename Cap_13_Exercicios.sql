# EXERCÍCIOS DO CAPÍTULO 13 - INDEXES AND CONSTRAINTS

USE bank;

# EXERCÍCIO 13.1

ALTER TABLE account
ADD CONSTRAINT A UNIQUE (cust_id, product_cd);

SELECT * FROM account;


# EXERCÍCIO 13.2

SELECT txn_date, account_id, txn_type_cd, amount
FROM transaction
WHERE txn_date > cast('2008-12-31 23:59:59' as datetime);
SELECT txn_date, account_id, txn_type_cd, amount
FROM transaction
WHERE txn_date > cast('2008-12-31 23:59:59' as datetime)
AND amount < 1000;


CREATE INDEX txn_id
ON transaction (txn_date, amount);