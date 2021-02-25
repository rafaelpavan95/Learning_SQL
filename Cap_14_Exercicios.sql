# EXERCÍCIOS DO CAPÍTULO 14 - VIEWS

USE bank;

# EXERCÍCIO 14.1

CREATE VIEW view(supervisor_name, employee_name)
AS
SELECT concat(spr.fname, ' ', spr.lname), concat(emp.fname, ' ', emp.lname)
FROM employee emp LEFT OUTER JOIN employee spr
ON emp.superior_emp_id = spr.emp_id;
SELECT * FROM view;

# EXERCÍCIO 14.2

CREATE VIEW gerente_view (branch_name, branch_city, total_balance)
AS
SELECT b.name, b.city, sum(a.avail_balance)
FROM branch b INNER JOIN account a
ON b.branch_id = a.open_branch_id
GROUP BY b.name, b.city;
SELECT * FROM gerente_view;