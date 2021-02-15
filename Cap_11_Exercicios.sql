# EXERCÍCIOS DO CAPÍTULO 11 - CONDITIONAL LOGIC

USE bank;

# EXERCÍCIO 1

SELECT emp_id,
	CASE title
		WHEN 'President' THEN 'Management'
		WHEN 'Vice President' THEN 'Management'
		WHEN 'Treasurer' THEN 'Management'
		WHEN 'Loan Manager' THEN 'Management'
		WHEN 'Operations Manager' THEN 'Operations'
		WHEN 'Head Teller' THEN 'Operations'
		WHEN 'Teller' THEN 'Operations'
		ELSE 'Unknown'
		END
FROM employee;


SELECT emp_id,
	CASE
		WHEN title = 'President' OR title = 'Vice President' OR title = 'Treasurer' OR title = 'Loan Manager' THEN 'Management'
		WHEN title = 'Teller' OR title = 'Head Teller'  OR title = 'Operations Manager' THEN 'Operations'
        ELSE 'Unknown'
	END
FROM employee;


# EXERCÍCIO 2

SELECT SUM(CASE 
			WHEN open_branch_id = 1 
            THEN 1 
            ELSE 0 
            END) as branch_1,
            SUM(CASE 
			WHEN open_branch_id = 2 
            THEN 1 
            ELSE 0 
            END) as branch_2,
            SUM(CASE 
			WHEN open_branch_id = 3 
            THEN 1 
            ELSE 0 
            END) as branch_3,
			SUM(CASE 
			WHEN open_branch_id = 4 
            THEN 1 
            ELSE 0 
            END) as branch_4
FROM account;