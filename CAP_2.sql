USE sql_cookbook;

# Chapter 2. Sorting Query Results

SELECT ename, job, sal FROM emp
WHERE deptno = 10
ORDER BY sal ASC;

SELECT ename, job, sal FROM emp
WHERE deptno = 10
ORDER BY sal DESC;

SELECT empno, deptno, sal, ename, job FROM emp
ORDER BY deptno ASC, sal DESC;

SELECT ename, job FROM emp
ORDER BY SUBSTR(job,length(job)-2);

CREATE VIEW v AS SELECT concat(ename, " ",deptno) AS data FROM emp;
SELECT * FROM v;

SELECT ename, sal, job, comm FROM emp
ORDER BY 
	CASE WHEN job = 'SALESMAN' then comm
    ELSE sal
    END;

SELECT ename, sal, job, comm,
	CASE WHEN comm IS NULL then 1
    ELSE 0
    END
    AS flag 
FROM emp
ORDER BY flag, comm;


SELECT ename, sal, job, comm,
	CASE WHEN comm IS NULL then 1
    ELSE 0
    END
    AS flag 
FROM emp
ORDER BY flag, comm DESC;