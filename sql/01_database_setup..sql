#CREATING DATABASE
CREATE DATABASE TM;
USE TM;

#CREATING EMPLOYEE TABLE
CREATE TABLE EmployeeS (
    Employee_ID INT AUTO_INCREMENT,
    First_Name VARCHAR(50) NOT NULL,
    Last_Name VARCHAR(50) NOT NULL,
    Department VARCHAR(50) NOT NULL,
    Position VARCHAR(50) NOT NULL,
    Salary DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (Employee_ID)
);

INSERT INTO Employees( Employee_ID,First_Name, Last_Name, Department,Position, Salary) VALUES
(101,'Raj','Sharma','Sales', 'Sales Manager', 75000),
(102,'Priya','Gupta','Human Resources','HR Manager',68000),
(103, 'Amit','Kumar','IT','Software Developer', 65000),
(104,'Neha','Singh','Finance','Financial Analyst',58000),
(105,'Rahul','Verma','Marketing','Marketing Coordinator',52000),
(106, 'Anjali','Mishra','Customer Service', 'Customer Service Rep',38000),
(107,'Vikas', 'Jain', 'IT', 'System Administrator', 55000),
(108, 'Sonam', 'Kapoor','Sales','Sales Executive', 42000),
(109, 'Rohit', 'Agarwal', 'IT', 'UI/UX Designer',60000),
(110, 'Kavya', 'Reddy', 'Marketing', 'Content Writer', 45000),
(111, 'Karan', ' Shah', 'Finance','Finance Officer',55000),
(112, 'Deepika','Patel','Customer Service','Customer Service Manager',48000),
(113,'Aditya','Chopra','IT','Database Developer',62000),
(114,'Shweta','Dubey','Human Resources','Recruitment Specialist',46000),
(115,'Siddharth','Joshi','Sales','Sales Representative',40000),
(116,'Riya','Nair','Marketing','Digital Marketing Specialist',50000),
(117,'Arjun','Malhotra','IT','Quality Assurance',54000),
(118,'Khushi','Chatterjee','Finance','Accounting Assistant',36000),
(119,'Vivek','Banerjee','Sales','Sales Analyst',48000),
(120,'Tanuja','Das','Customer Service','Customer Service Rep',35000),
(121,'Yash','Pandey','IT','Security Specialist',68000),
(122,'Pooja','Yadav','Human Resources','Training Coordinator',42000),
(123,'Abhishek','Tiwari','Marketing','Brand Manager',56000),
(124,'Sneha','Ahmed','Finance','Financial Planner',52000),
(125,'Mohit','Rawat','Sales','Sales Representative',38000),
(126,'Ananya','Khanna','IT','Data Analyst', 58000),
(127,'Dhruv','Saxena','Customer Service','Customer Service Rep',34000),
(128,'Isha','Bose','Human Resources','HR Assistant',32000),
(129,'Kunal','Mehta','Marketing','Social Media Manager',48000),
(130,'Sarika','Chaudhary','Finance','Finance Assistant',34000);

#ADDING NEW COLUMN IN Employees Table
ALTER TABLE employees
ADD Hire_Date DATE NOT NULL;



#Inserting Data in Hiring_Date Cloumn
UPDATE employees SET Hire_Date = '2016-01-10' WHERE Employee_ID = 101;
UPDATE employees SET Hire_Date = '2016-06-15' WHERE Employee_ID = 102;
UPDATE employees SET Hire_Date = '2017-03-20' WHERE Employee_ID = 103;
UPDATE employees SET Hire_Date = '2017-08-05' WHERE Employee_ID = 104;
UPDATE employees SET Hire_Date = '2018-02-12' WHERE Employee_ID = 105;
UPDATE employees SET Hire_Date = '2018-09-18' WHERE Employee_ID = 106;
UPDATE employees SET Hire_Date = '2020-10-15' WHERE Employee_ID = 107;
UPDATE employees SET Hire_Date = '2015-11-18' WHERE Employee_ID = 108;
UPDATE employees SET Hire_Date = '2016-01-05' WHERE Employee_ID = 109;
UPDATE employees SET Hire_Date = '2019-02-14' WHERE Employee_ID = 110;
UPDATE employees SET Hire_Date = '2018-07-19' WHERE Employee_ID = 111;
UPDATE employees SET Hire_Date = '2020-01-25' WHERE Employee_ID = 112;
UPDATE employees SET Hire_Date = '2021-06-18' WHERE Employee_ID = 113;
UPDATE employees SET Hire_Date = '2019-12-02' WHERE Employee_ID = 114;
UPDATE employees SET Hire_Date = '2019-07-10' WHERE Employee_ID = 115;
UPDATE employees SET Hire_Date = '2020-08-30' WHERE Employee_ID = 116;
UPDATE employees SET Hire_Date = '2022-03-09' WHERE Employee_ID = 117;
UPDATE employees SET Hire_Date = '2019-12-02' WHERE Employee_ID = 118;
UPDATE employees SET Hire_Date = '2020-04-22' WHERE Employee_ID = 119;
UPDATE employees SET Hire_Date = '2021-07-14' WHERE Employee_ID = 120;
UPDATE employees SET Hire_Date = '2016-06-15' WHERE Employee_ID = 121;
UPDATE employees SET Hire_Date = '2021-04-08' WHERE Employee_ID = 122;
UPDATE employees SET Hire_Date = '2021-11-11' WHERE Employee_ID = 123;
UPDATE employees SET Hire_Date = '2021-04-08' WHERE Employee_ID = 124;
UPDATE employees SET Hire_Date = '2021-09-01' WHERE Employee_ID = 125;
UPDATE employees SET Hire_Date = '2022-05-27' WHERE Employee_ID = 126;
UPDATE employees SET Hire_Date = '2022-12-01' WHERE Employee_ID = 127;
UPDATE employees SET Hire_Date = '2022-09-16' WHERE Employee_ID = 128;
UPDATE employees SET Hire_Date = '2022-05-27' WHERE Employee_ID = 129;
UPDATE employees SET Hire_Date = '2022-09-16' WHERE Employee_ID = 130;


#ADDING NEW COLUMN IN Employees Table

ALTER TABLE employees
ADD Manager_ID INT;

#Inserting Data into Manager_ID  Column
UPDATE employees SET Manager_ID = NULL WHERE Employee_ID IN (101,102,103,104,105,106);
UPDATE employees SET Manager_ID = 101 WHERE Employee_ID IN (108,115,119,125);
UPDATE employees SET Manager_ID = 103 WHERE Employee_ID IN (107,109,113,117,121,126);
UPDATE employees SET Manager_ID = 105 WHERE Employee_ID IN (110,116,123,129);
UPDATE employees SET Manager_ID = 104 WHERE Employee_ID IN (111,118,124,130);
UPDATE employees SET Manager_ID = 106 WHERE Employee_ID IN (112,120,127);




#CREATING PRODUCTS TABLE
CREATE TABLE Products (
    Product_ID INT AUTO_INCREMENT,
    Product_Name VARCHAR(100) NOT NULL,
    Category VARCHAR(50) NULL,
    Price DECIMAL(10,2) NOT NULL,
    Stock_Quantity INT NOT NULL,
	Supplier_code VARCHAR(10) NOT NULL,
    PRIMARY KEY (Product_ID)
);

INSERT INTO Products
(Product_ID, Product_Name, Category, Price, Stock_Quantity, Supplier_code)
VALUES
(1001,'Smartphone X1','Mobile',25999,45,'S201'),
(1002,'Laptop Pro 15','Laptop', 65999,30,'S203'),
(1003,'Wireless Earbuds','Audio',3999,120,'S205'),
(1004,'Smart Watch','Wearable',8999,75,'S207'),
(1005,'Tablet 10.5"','Tablet',19999,50,'S203'),
(1006,'Gaming Console','Gaming',29999,25,'S209'),
(1007,'4K Smart TV','TV', 45999,15,'S211'),
(1008,'Digital Camera','Camera',35999,20,'S213'),
(1009,'Bluetooth Speaker','Audio',2499,85,'S205'),
(1010,'Power Bank 20000mAh','Accessories',1499,150 ,'S201'),
(1011,'Android Phone Y5','Mobile',15999,60,'S201'),
(1012,'Ultrabook 14"','Laptop',49999,35,'S203'),
(1013,'Wireless Headphones','Audio',5999,95,'S205'),
(1014,'Fitness Band','Wearable',2999,110 ,'S207'),
(1015,'Tablet 8"','Tablet', 12999,55,'S203'),
(1016,'Gaming Chair','Gaming',8999,40,'S209'),
(1017,'Smart TV 55"','TV', 34999,20,'S211'),
(1018,'Action Camera','Camera',12999,45,'S213'),
(1019,'Wireless Charger','Accessories',999,180,'S201'),
(1020,'iPhone 13','Mobile',69999,25,'S201'),
(1021,'Gaming Laptop','Laptop',89999,15,'S203'),
(1022,'Wireless Earphones','Audio',7999,70,'S205'),
(1023,'Smart Band','Wearable',1999,130,'S207'),
(1024,'Tablet 12"','Tablet',24999,30,'S203'),
(1025,'Gaming Mouse','Gaming',1999,100,'S209'),
(1026,'Smart TV 43"','TV',24999,25,'S211'),
(1027,'DSLR Camera','Camera',49999,18,'S213'),
(1028,'USB Hub ','Accessories',799 ,200,'S201'),
(1029,'Budget Smartphone','Mobile',8999,80,'S201'),
(1030,'2-in-1 Laptop','Laptop',55999,22,'S203');



#CREATING ORDERS TABLE
CREATE TABLE Orders (
    Order_ID INT AUTO_INCREMENT,
    Customer_ID VARCHAR(10) NOT NULL,
    Product_ID INT NOT NULL,
    Order_Date DATE NOT NULL,
    Quantity INT NOT NULL,
    Total_Amount DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (Order_ID),
    FOREIGN KEY (Product_ID) REFERENCES Products(Product_ID)
);


INSERT INTO Orders (Order_ID,Customer_ID, Product_ID, Order_Date, Quantity, Total_Amount) VALUES
(5001,'C1001',1001,'2023-01-05',1,25999),
(5002,'C1002',1002,'2023-01-07',1,65999),
(5003,'C1003',1003,'2023-01-08', 2,7998),
(5004,'C1004',1004,'2023-01-10',1,8999),
(5005,'C1005', 1005,'2023-01-12',1,19999),
(5006,'C1001',1006,'2023-01-14',1,29999),
(5007,'C1006', 1007,'2023-01-15',1,45999),
(5008,'C1007',1008,'2023-01-18',1,35999),
(5009,'C1008',1009,'2023-01-20',3,7497),
(5010,'C1009',1010,'2023-01-22',2,2998),
(5011,'C1010',1011,'2023-01-25',1,15999),
(5012,'C1002',1012,'2023-01-27',1,49999),
(5013,'C1011',1013,'2023-01-28',1,5999),
(5014,'C1012',1014,'2023-02-01',2,5998),
(5015,'C1013',1015,'2023-02-03',1,12999),
(5016,'C1014',1016,'2023-02-05',1,8999),
(5017,'C1015',1017,'2023-02-07',1,34999),
(5018,'C1016',1018,'2023-02-09',1,12999),
(5019,'C1017',1019,'2023-02-11',3,2997),
(5020,'C1018',1020,'2023-02-13',1,69999),
(5021,'C1019',1021,'2023-02-15',1,89999),
(5022,'C1020',1022,'2023-02-17',1,7999),
(5023,'C1021',1023,'2023-02-19',2,3998),
(5024,'C1022',1024,'2023-02-21',1,24999),
(5025,'C1023',1025,'2023-02-23',2,3998),
(5026,'C1024',1026,'2023-02-25',1,24999),
(5027,'C1025',1027,'2023-02-27',1,49999),
(5028,'C1026',1028,'2023-03-01',4,3196),
(5029,'C1027',1029,'2023-03-03',2,17998),
(5030,'C1028',1030,'2023-03-05',1,55999);


#ADDING Employee_ID column in orders table
ALTER TABLE orders
ADD Employee_ID INT;

#Inserting Data into Employee_ID Table

UPDATE orders SET Employee_ID = 108 WHERE Order_ID BETWEEN 5001 AND 5004;
UPDATE orders SET Employee_ID = 115 WHERE Order_ID BETWEEN 5005 AND 5008;
UPDATE orders SET Employee_ID = 119 WHERE Order_ID BETWEEN 5009 AND 5012;
UPDATE orders SET Employee_ID = 125 WHERE Order_ID BETWEEN 5013 AND 5016;
UPDATE orders SET Employee_ID = 110 WHERE Order_ID BETWEEN 5017 AND 5020;
UPDATE orders SET Employee_ID = 116 WHERE Order_ID BETWEEN 5021 AND 5024;
UPDATE orders SET Employee_ID = 123 WHERE Order_ID BETWEEN 5025 AND 5027;
UPDATE orders SET Employee_ID = 129 WHERE Order_ID BETWEEN 5028 AND 5030;

