USE sql_cookbook;

# Chapter 1. Retrieving Records

SELECT * FROM emp;

SELECT * FROM emp
WHERE job = 'SALESMAN';

SELECT * FROM emp
WHERE deptno = 10 
OR comm IS NOT NULL 
OR sal < 2000 AND deptno = 20;

SELECT * FROM emp
WHERE (deptno = 10 OR comm IS NOT NULL OR sal <= 2000) AND deptno=20;

SELECT ename, deptno, sal FROM emp;

SELECT * FROM (SELECT sal as salary, ename as name, comm as comission FROM emp) subemp 
WHERE salary < 3000;

SELECT CONCAT(ename , ' WORK AS ', job) as mensagem
FROM emp
WHERE deptno=10;


SELECT ename, sal,
	
    CASE WHEN sal <= 2000 THEN 'UNDERPAID'
    
		 WHEN sal >= 4000 THEN 'OVERPAID'
    
    ELSE 'OK'
    
    END AS status
    
FROM emp;

SELECT * FROM emp LIMIT 5;


SELECT * FROM emp 
ORDER BY rand() 
LIMIT 5;

SELECT * FROM emp 
WHERE comm IS NULL;

SELECT 

	CASE WHEN comm IS NULL then 0

    ELSE comm
    
    END
    
from emp;

SELECT ename, job from emp
WHERE deptno IN (10,20)
AND (ename LIKE '%I%' OR job LIKE '%ER');