USE BATCH_1;

CREATE TABLE DEPARTMENT(
DNO INT PRIMARY KEY,
DNAME VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE EMPLOYEES(
EID INT PRIMARY KEY,
ENAME VARCHAR(50),
DNO INT,
SALARY INT,
MANAGER_ID INT,
CITY VARCHAR(50),
FOREIGN KEY(DNO) REFERENCES DEPARTMENT(DNO) ON DELETE CASCADE
);

INSERT INTO [dbo].[DEPARTMENT] VALUES(100,'IT');
INSERT INTO [dbo].[DEPARTMENT] VALUES(101,'SALES');
INSERT INTO [dbo].[DEPARTMENT] VALUES(102,'MARKETING');
INSERT INTO [dbo].[DEPARTMENT] VALUES(103,'ACCOUNT');
INSERT INTO [dbo].[DEPARTMENT] VALUES(104,'ADMIN');
INSERT INTO [dbo].[DEPARTMENT] VALUES(105,'RD');

INSERT INTO [dbo].[EMPLOYEES] VALUES(1,'KARTIK',100,60000,NULL,'BANGALORE');
INSERT INTO [dbo].[EMPLOYEES] VALUES(2,'SOMYA',101,67000,1,'BANGALORE');
INSERT INTO [dbo].[EMPLOYEES] VALUES(3,'RAJNIKANT',100,60000,1,'CHENNAI');
INSERT INTO [dbo].[EMPLOYEES] VALUES(4,'PRABHAKARAN',100,80000,1,'CHENNAI');
INSERT INTO [dbo].[EMPLOYEES] VALUES(5,'MANISH',103,80000,2,'DELHI');
INSERT INTO [dbo].[EMPLOYEES] VALUES(6,'KARTIK',103,50000,3,'DELHI');
INSERT INTO [dbo].[EMPLOYEES] VALUES(7,'RAJEEV',104,80000,3,'DELHI');
INSERT INTO [dbo].[EMPLOYEES] VALUES(8,'SAKTI',102,70000,5,'HYDERABAD');
INSERT INTO [dbo].[EMPLOYEES] VALUES(10,'NAMAN',NULL,70000,5,'HYDERABAD');


SELECT  
CASE 
WHEN GROUPING(Dname)= 1 then 'Grand Total'
WHEN GROUPING(ENAME)= 1 then 'Sub Total'
ELSE Dname
END
AS DEPT_NAME, ENAME,sum(salary) AS totlSalary,Avg(salary) AS AVGSalary
FROM employees
join DEPARTMENT on DEPARTMENT.DNo = EMPLOYEES.DNO
GROUP BY ROLLUP(Dname,ENAME);

SELECT DISTINCT AVG(Salary) OVER (PARTITION BY DNAME ) as department_type_avg,
DNAME FROM EMPLOYEES  AS E
JOIN [dbo].[DEPARTMENT] AS D ON E.DNO = D.DNO;

SELECT * FROM [dbo].[DEPARTMENT];
SELECT * FROM [dbo].[EMPLOYEES];

-- JOINS

SELECT ENAME,DNAME FROM [dbo].[EMPLOYEES] AS E
INNER JOIN [dbo].[DEPARTMENT] AS D ON E.DNO = D.DNO;

SELECT * FROM [dbo].[EMPLOYEES] AS E
INNER JOIN [dbo].[DEPARTMENT] AS D ON E.DNO = D.DNO;

SELECT COUNT(CITY),CITY FROM EMPLOYEES AS E
JOIN [dbo].[DEPARTMENT] AS D ON E.DNO = D.DNO
GROUP BY CITY;

SELECT ENAME,DNAME FROM [dbo].[EMPLOYEES] AS E
LEFT JOIN [dbo].[DEPARTMENT] AS D ON E.DNO = D.DNO;

SELECT ENAME,DNAME FROM [dbo].[EMPLOYEES] AS E
RIGHT JOIN [dbo].[DEPARTMENT] AS D ON E.DNO = D.DNO;

SELECT ENAME,DNAME FROM [dbo].[EMPLOYEES] AS E
FULL JOIN [dbo].[DEPARTMENT] AS D ON E.DNO = D.DNO;

SELECT ENAME,DNAME FROM [dbo].[EMPLOYEES] AS E
CROSS JOIN [dbo].[DEPARTMENT];

SELECT E2.ENAME AS REPORTEE ,E1.ENAME AS MANAGER FROM [dbo].[EMPLOYEES] AS E1
INNER JOIN [dbo].[EMPLOYEES] AS E2 
ON E1.[EID] = E2.[MANAGER_ID];

SELECT * FROM [dbo].[EMPLOYEES] AS E
JOIN [dbo].[DEPARTMENT] AS D ON E.DNO < D.DNO;

SELECT COUNT(DNAME)AS NO_OF_EMPLOYEES,DNAME FROM EMPLOYEES AS E
FULL JOIN [dbo].[DEPARTMENT] AS D ON E.DNO = D.DNO
GROUP BY DNAME
ORDER BY 1;


-- Stored Procedure
CREATE PROCEDURE P1
AS
SELECT * FROM DEPARTMENT
GO;

exec P1;

-- TCL
begin transaction;
DELETE FROM DEPARTMENT WHERE DNO=106;
commit;

begin transaction;
INSERT INTO [dbo].[DEPARTMENT] VALUES(106,'FINANCE');
rollback;

exec P1;


-- STRING FUNCTIONS
SELECT CONCAT([ENAME],' ',[CITY]) FROM [dbo].[EMPLOYEES]
SELECT ENAME,LEN(ENAME) 'LENGTH' 
FROM EMPLOYEES;
SELECT ENAME,LOWER(ENAME) 'LENGTH' 
FROM EMPLOYEES;
SELECT ENAME,CHARINDEX('I',ENAME) FROM EMPLOYEES;
SELECT ENAME,PATINDEX('%KAR%',ENAME) FROM EMPLOYEES;


-- SYSTEM functions
select HOST_ID() as id;
select host_name() as hostname;


-- DATE FUNCTIONS
SELECT GETDATE();
SELECT SYSDATETIME();
SELECT MONTH(GETDATE());
SELECT MONTH([dob]) FROM student_info;
SELECT YEAR([dob]) FROM student_info;
SELECT DAY([dob]) FROM student_info;
SELECT DATENAME(MONTH,[dob]) FROM student_info;
SELECT DATEPART(MONTH,[dob]) FROM student_info;
SELECT DATEDIFF(MONTH,[dob],GETDATE()) FROM student_info;
SELECT EOMONTH([dob]) FROM STUDENT;

--MATH FUNCTIONS
SELECT PI() AS pi;
SELECT POWER(10,2) AS power;
SELECT SQRT(36)AS Squareroot;
SELECT CEILING(10.5), FLOOR(10.5);
SELECT SIGN(-2.335)
SELECT ROUND(10.65,1)

SELECT ASCII('A')
SELECT [dob],[sname],DATEDIFF(YEAR,[dob],GETDATE()) FROM student_info 
WHERE DATEDIFF(YEAR,[dob],GETDATE())>25;

select [ENAME],(select [DNAME] from [dbo].[DEPARTMENT] as D where d.DNO=e.DNO) from [dbo].[EMPLOYEES] as E;


CREATE TABLE SalesList
(SalesMonth NVARCHAR(20), 
SalesQuartes  VARCHAR(5), 
SalesYear  SMALLINT, 
SalesTotal MONEY);

INSERT INTO  SalesList(SalesMonth,SalesQuartes,SalesYear,SalesTotal) VALUES (N'March','Q1',2019,60);
INSERT INTO SalesList(SalesMonth,SalesQuartes,SalesYear,SalesTotal) VALUES (N'March','Q1',2020,50);
INSERT INTO SalesList(SalesMonth,SalesQuartes,SalesYear,SalesTotal) VALUES (N'May','Q2',2019,30);
INSERT INTO SalesList(SalesMonth,SalesQuartes,SalesYear,SalesTotal) VALUES (N'July','Q3',2020,10);
INSERT INTO SalesList(SalesMonth,SalesQuartes,SalesYear,SalesTotal) VALUES (N'November','Q4',2019,120);
INSERT INTO SalesList(SalesMonth,SalesQuartes,SalesYear,SalesTotal) VALUES (N'October','Q4',2019,150);
INSERT INTO SalesList(SalesMonth,SalesQuartes,SalesYear,SalesTotal) VALUES (N'November','Q4',2019,180);
INSERT INTO SalesList(SalesMonth,SalesQuartes,SalesYear,SalesTotal) VALUES (N'November','Q4',2020,120);
INSERT INTO SalesList(SalesMonth,SalesQuartes,SalesYear,SalesTotal) VALUES (N'July','Q3',2019,160);
INSERT INTO SalesList(SalesMonth,SalesQuartes,SalesYear,SalesTotal) VALUES (N'March','Q1',2020,170);

-- SUB TOTALS
SELECT  SalesYear, SUM(SalesTotal) AS SalesTotal FROM SalesList
GROUP BY ROLLUP(SalesYear);

SELECT  SalesYear,SalesQuartes, SUM(SalesTotal) AS SalesTotal
FROM SalesList GROUP BY ROLLUP(SalesYear, SalesQuartes);

SELECT  SalesYear,SalesQuartes,SalesMonth ,SUM(SalesTotal) AS SalesTotal
FROM SalesList GROUP BY ROLLUP(SalesYear, SalesQuartes, SalesMonth);

SELECT SalesYear,SalesQuartes, SUM(SalesTotal) AS SalesTotal ,
GROUPING(SalesQuartes) AS SalesQuarterGrp,
GROUPING(SalesYear) AS SYearGrp
FROM SalesList
GROUP BY ROLLUP(SalesYear, SalesQuartes);

WITH CTE AS (
SELECT SalesMonth,SalesTotal , 
ROW_NUMBER() OVER(ORDER BY NEWID())
AS RowNumber FROM SalesList )

SELECT 
    RowNumber ,SalesMonth,SUM(SalesTotal) AS SalesTotal 
FROM CTE 
GROUP BY ROLLUP(SalesMonth, RowNumber);


WITH CTE AS (
SELECT SalesMonth,SalesTotal , 
ROW_NUMBER() OVER(ORDER BY NEWID())
AS RowNumber FROM SalesList 
)
 
SELECT  
CASE WHEN GROUPING(RowNumber) =1 THEN 'SubTotal'
ELSE SalesMonth
END AS SalesMonth,SUM(SalesTotal) AS SalesTotal 
FROM CTE 
GROUP BY ROLLUP(SalesMonth, RowNumber)
HAVING GROUPING(SalesMonth) = 0;

SELECT 
CASE 
WHEN GROUPING(SalesQuartes)=1 AND GROUPING(SalesYear)=0 THEN 'SubTotal'
WHEN GROUPING(SalesQuartes)=1 AND GROUPING(SalesYear)=1 THEN 'Grand Total'
ELSE CAST(SalesYear AS VARCHAR(10))
END 
AS SalesYear, SalesQuartes,SUM(SalesTotal) AS SalesTotal 
FROM SalesList
GROUP BY ROLLUP(SalesYear,SalesQuartes);

SELECT SalesMonth,SalesTotal , 
ROW_NUMBER() OVER(ORDER BY NEWID())
AS RowNumber FROM SalesList ;


