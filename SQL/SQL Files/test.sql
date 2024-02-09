create database test;
use test;
CREATE TABLE Suppliers (
    SupplierID INT PRIMARY KEY,
    SupplierName VARCHAR(255),
    ContactName VARCHAR(255),
    Address VARCHAR(255),
    City VARCHAR(255),
    PostalCode VARCHAR(20),
    Country VARCHAR(255)
);

INSERT INTO Suppliers (SupplierID, SupplierName, ContactName, Address, City, PostalCode, Country)
VALUES
  (1, 'Exotic Liquid', 'Charlotte Cooper', '49 Gilbert St.', 'London', 'EC1 4SD', 'UK'),
  (2, 'New Orleans Cajun Delights', 'Shelley Burke', 'P.O. Box 78934', 'New Orleans', '70117', 'USA'),
  (3, 'Grandma Kelly''s Homestead', 'Regina Murphy', '707 Oxford Rd.', 'Ann Arbor', '48104', 'USA'),
  (4, 'Tokyo Traders', 'Yoshi Nagase', '9-8 Sekimai Musashino-shi', 'Tokyo', '100', 'Japan');
  
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(255),
    SupplierID INT,
    Unit VARCHAR(255),
    Price DECIMAL(10, 2),
    FOREIGN KEY (SupplierID) REFERENCES Suppliers(SupplierID)
);

CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    OrderDate DATE
    );
INSERT INTO Products (ProductID, ProductName, SupplierID, Unit, Price)
VALUES
  (1, 'Chais', 1, '10 boxes x 20 bags', 18),
  (2, 'Chang', 1, '24 - 12 oz bottles', 19),
  (3, 'Aniseed Syrup', 1, '12 - 550 ml bottles', 10),
  (4, 'Chef Anton''s Cajun Seasoning', 2, '48 - 6 oz jars', 22),
  (5, 'Chef Anton''s Gumbo Mix', 2,  '36 boxes', 21.35),
  (6, 'Grandma''s Boysenberry Spread', 3,  '12 - 8 oz jars', 25),
  (7, 'Uncle Bob''s Organic Dried Pears', 3, '12 - 1 lb pkgs.', 30),
  (8, 'Northwoods Cranberry Sauce', 3,  '12 - 12 oz jars', 40),
  (9, 'Mishi Kobe Niku', 4,  '18 - 500 g pkgs.', 97);

INSERT INTO Orders (OrderID, OrderDate)
VALUES
  (10248, '1996-07-04'),
  (10249, '1996-07-05'),
  (10250, '1996-07-08'),
  (10251, '1996-07-08');
  
INSERT INTO OrderDetails (OrderDetailID, OrderID, ProductID, Quantity)
VALUES
  (1, 10248, 1, 12),
  (2, 10248, 4, 10),
  (3, 10248, 7, 5),
  (4, 10249, 4, 9),
  (5, 10249, 5, 40),
  (6, 10250, 1, 10),
  (7, 10250, 5, 35),
  (8, 10250, 6, 15),
  (9, 10251, 2, 6),
  (10, 10251, 7, 15);

-- ALL
SELECT ProductName,ProductID FROM Products
WHERE ProductID = ALL (SELECT ProductID FROM OrderDetails WHERE Quantity = 40);

-- FILTER
SELECT COUNT(ProductID),avg(Quantity) FILTER ( WHERE avg(Quantity) > 10 ) FROM OrderDetails GROUP BY ProductID;

-- GROUP BY AND COUNT
SELECT COUNT(OrderID),OrderID FROM OrderDetails GROUP BY OrderID;

select * from orderdetails;

-- SUBQUERY, ALL, AGGREGATE
SELECT OrderID FROM OrderDetails GROUP BY OrderID 
HAVING max(Quantity) > ALL (SELECT avg(Quantity) FROM OrderDetails GROUP BY OrderID);

-- AGGREGATE
SELECT avg(Quantity) FROM OrderDetails 
WHERE Quantity>1
GROUP BY OrderID
HAVING avg(Quantity)>10
ORDER BY avg(Quantity) ASC
LIMIT 5;

-- AGGREGATE FUNCTIONS
SELECT max(Quantity),OrderID FROM OrderDetails GROUP BY OrderID;
SELECT min(Quantity),OrderID FROM OrderDetails GROUP BY OrderID;
SELECT sum(Quantity),OrderID FROM OrderDetails GROUP BY OrderID;

                            
/* String functions*/
select ascii('CB'); 
select char(66);
select len('Microsift sql');
select lower('JHON');
select replace('Microsoft sql','sql','server');
select reverse('python');
select upper('yourname');
select str(136.564,8,4);
select ascii('a');
select upper('abhi') as upcase;
select len('abhi') as lengthy;
select concat('abhi',' ','ram') as concat1;
select 'abhi'+' '+'ram' as concat2 ;
SELECT LEFT('data engineering', 3) AS ExtractString; 
SELECT LOWER('ABHI RAM') as lowername;
select ltrim('   abhi');
select rtrim('abhi      ') as righttrim;
select replace('abhi','a','r');
SELECT str (1564.58,4,3);
SELECT SUBSTRING('data engineering ', 1, 3) AS ExtractString;
 
/* Date Functions*/
select  getdate ();/*get current date and time*/
select dateadd (mm, 2, '2023-12-07');/*add months to existed date */
select datepart (mm, '2008-5-22');/*return months value*/
select day ( '2023-05-30');/*return value of date of that particular day*/
select month ('2023-05-31');/*return month value*/
select year ( '2023-05-3');/*return year value*/

 
/*Mathematical Functions*/
select abs(-101);/*returns absolute value*/
select sin(1.5);/*returns angle in radians*/
select ceiling(14.01);/*returns the smallest or greater to the specified value*/
select exp(4.5);/*returns the exponencial value*/
select floor(14.75);
select log(5.4);/*return logarithmic value*/


create table employee(
id int primary key,
name varchar(20),
age int,
email varchar(20),
salary int,
department varchar(20)
);

drop table employee;

insert into employee(id,name,age,email,salary,department) values(101,'aparna',20,'aparna@gmail.com',30000,'sales');
insert into employee(id,name,age,email,salary,department) values(102,'stella',20,'stella@gmail.com',40000,'HR');
insert into employee(id,name,age,email,salary,department) values(103,'bob',45,'bob@gmail.com',30000,'IT');
insert into employee(id,name,age,email,salary,department) values(104,'aparna',20,'aparna@gmail.com',30000,'sales');
insert into employee(id,name,age,email,salary,department) values(105,'stella',20,'stella@gmail.com',40000,'HR');
insert into employee(id,name,age,email,salary,department) values(106,'kishore',35,'kishore@gmail.com',35000,'IT');
insert into employee(id,name,age,email,salary,department) values(107,'lucky',28,'lucky@gmail.com',60000,'salesforce');
insert into employee(id,name,age,email,salary,department) values(108,'nimmi',30,'nimmi@gmail.com',30000,'IT');
insert into employee(id,name,age,email,salary,department) values(109,'krish',30,'krish@gmail.com',45000,'sales');

create table emp(
id int primary key,
name varchar(10),
age int,
email varchar(20),
salary int,
department varchar(10)
);

insert into emp(id,name,age,email,salary,department) values(201,'bob',45,'bob@gmail.com',30000,	'IT');
insert into emp(id,name,age,email,salary,department) values(107,'lucky',28,'lucky@gmail.com',60000,'salesforce');
insert into emp(id,name,age,email,salary,department) values(108,'nimmi',30,'nimmi@gmail.com',30000,'IT');
insert into emp(id,name,age,email,salary,department) values(202,'heshi',45,'heshi@gmail.com',30000,	'HR');
insert into emp(id,name,age,email,salary,department) values(203,'minnu',45,'minnu@gmail.com',30000,	'HR');

select * from employee
union
select *from emp;

select * from employee
union all
select * from emp;

select * from employee
intersect 
select * from emp;

select *from emp
except
select * from employee;

select name,salary,age from employee
except
select name,salary,age from emp;

SELECT OrderDate, SUM(Quantity) AS Total_Prod FROM OrderDetails AS O
JOIN Orders AS P ON P.OrderID = O.OrderID
GROUP BY ROLLUP(OrderDate);

-- PARTITION BY
SELECT distinct AVG(salary) OVER (PARTITION BY department ) as department_type_avg,
avg(salary) OVER() as overall_avg, department FROM emp;


-- REGEXP
SELECT name FROM employee WHERE name REGEXP '^ap';

SELECT name FROM employee WHERE name REGEXP 'ky$';

SELECT name FROM employee WHERE name REGEXP '[sh]';

-- MATERIALIZED VIEW
CREATE VIEW COUNT_ORDER_ID AS
SELECT COUNT(OrderID),OrderID FROM OrderDetails GROUP BY OrderID;

SELECT * FROM COUNT_ORDER_ID
