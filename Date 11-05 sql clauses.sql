Enter password: ********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 13
Server version: 8.0.46 MySQL Community Server - GPL

Copyright (c) 2000, 2026, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> SHOW DATABASES;
+---------------------------+
| Database                  |
+---------------------------+
| bankdb                    |
| ecommerce                 |
| information_schema        |
| mysql                     |
| performance_schema        |
| student_management_system |
| sys                       |
+---------------------------+
7 rows in set (0.13 sec)

mysql> USE ECOMMERCE;
Database changed
mysql> SHOW TABLES;
+---------------------+
| Tables_in_ecommerce |
+---------------------+
| customer            |
| feedback            |
| orders              |
| product             |
| student             |
+---------------------+
5 rows in set (0.03 sec)

mysql> SELECT * FROM ORDERS;
Empty set (0.07 sec)

mysql> DESC ORDERS;
+--------------+-------------+------+-----+---------+----------------+
| Field        | Type        | Null | Key | Default | Extra          |
+--------------+-------------+------+-----+---------+----------------+
| order_id     | int         | NO   | PRI | NULL    | auto_increment |
| customer_id  | varchar(5)  | NO   | MUL | NULL    |                |
| product_id   | varchar(10) | NO   | MUL | NULL    |                |
| quantity     | int         | NO   |     | NULL    |                |
| total_price  | double      | NO   |     | NULL    |                |
| payment_mode | varchar(20) | NO   |     | NULL    |                |
| order_date   | date        | NO   |     | NULL    |                |
| order_status | varchar(20) | NO   |     | NULL    |                |
+--------------+-------------+------+-----+---------+----------------+
8 rows in set (0.01 sec)

mysql> CREATE DATABASE AGGEREGATION;
Query OK, 1 row affected (0.17 sec)

mysql> CREATE TABLE ORDERS(ORDER_ID VARCHAR(10) NOT NULL PRIMARY KEY, PRODUCT_NAME VARCHAR(20) NOT NULL, CATEGORY VARCHAR(20) NOT NULL, SELLING_PRICE DOUBLE(12,2) NOT NULL, ORIGINAL_PRICE DOUBLE(12, 2) NOT NULL, STOCK INT NOT NULL);
Query OK, 0 rows affected, 2 warnings (0.05 sec)


mysql> DESC ORDERS;
+----------------+--------------+------+-----+---------+-------+
| Field          | Type         | Null | Key | Default | Extra |
+----------------+--------------+------+-----+---------+-------+
| ORDER_ID       | varchar(10)  | NO   | PRI | NULL    |       |
| PRODUCT_NAME   | varchar(20)  | NO   |     | NULL    |       |
| CATEGORY       | varchar(20)  | NO   |     | NULL    |       |
| SELLING_PRICE  | double(12,2) | NO   |     | NULL    |       |
| ORIGINAL_PRICE | double(12,2) | NO   |     | NULL    |       |
| STOCK          | int          | NO   |     | NULL    |       |
+----------------+--------------+------+-----+---------+-------+
6 rows in set (0.01 sec)

mysql> INSERT INTO ORDERS VALUES('P101', 'CHAIR', 'FURNITURE', 6000, 5000, 12);
Query OK, 1 row affected (0.02 sec)

mysql> INSERT INTO ORDERS VALUES('P102', 'TABLE', 'FURNITURE', 8000, 7500, 14), ('P103', 'MOBILE', 'ELECTRONICS', 20000, 18000, 20),('P104', 'JEANS', 'CLOTHING', 1000, 800, 13), ('P105', 'WEBCAM', 'ELECTRONICS', 7000, 5000, 14);
Query OK, 4 rows affected (0.01 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> DESC ORDERS;
+----------------+--------------+------+-----+---------+-------+
| Field          | Type         | Null | Key | Default | Extra |
+----------------+--------------+------+-----+---------+-------+
| ORDER_ID       | varchar(10)  | NO   | PRI | NULL    |       |
| PRODUCT_NAME   | varchar(20)  | NO   |     | NULL    |       |
| CATEGORY       | varchar(20)  | NO   |     | NULL    |       |
| SELLING_PRICE  | double(12,2) | NO   |     | NULL    |       |
| ORIGINAL_PRICE | double(12,2) | NO   |     | NULL    |       |
| STOCK          | int          | NO   |     | NULL    |       |
+----------------+--------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

mysql> SELECT * FROM ORDERS;
+----------+--------------+-------------+---------------+----------------+-------+
| ORDER_ID | PRODUCT_NAME | CATEGORY    | SELLING_PRICE | ORIGINAL_PRICE | STOCK |
+----------+--------------+-------------+---------------+----------------+-------+
| P101     | CHAIR        | FURNITURE   |       6000.00 |        5000.00 |    12 |
| P102     | TABLE        | FURNITURE   |       8000.00 |        7500.00 |    14 |
| P103     | MOBILE       | ELECTRONICS |      20000.00 |       18000.00 |    20 |
| P104     | JEANS        | CLOTHING    |       1000.00 |         800.00 |    13 |
| P105     | WEBCAM       | ELECTRONICS |       7000.00 |        5000.00 |    14 |
+----------+--------------+-------------+---------------+----------------+-------+
5 rows in set (0.01 sec)

mysql> SELECT SUM(SELLING_PRICE) FROM ORDERS;
+--------------------+
| SUM(SELLING_PRICE) |
+--------------------+
|           42000.00 |
+--------------------+
1 row in set (0.01 sec)

mysql> SELECT COUNT(*) FROM ORDERS;
+----------+
| COUNT(*) |
+----------+
|        5 |
+----------+
1 row in set (0.01 sec)

mysql> SELECT MAX(STOCK) FROM ORDERS;
+------------+
| MAX(STOCK) |
+------------+
|         20 |
+------------+
1 row in set (0.00 sec)

mysql> SELECT MIN(STOCK) FROM ORDERS;
+------------+
| MIN(STOCK) |
+------------+
|         12 |
+------------+
1 row in set (0.00 sec)

mysql> SELECT * FROM ORDERS ORDER BY STOCK;
+----------+--------------+-------------+---------------+----------------+-------+
| ORDER_ID | PRODUCT_NAME | CATEGORY    | SELLING_PRICE | ORIGINAL_PRICE | STOCK |
+----------+--------------+-------------+---------------+----------------+-------+
| P101     | CHAIR        | FURNITURE   |       6000.00 |        5000.00 |    12 |
| P104     | JEANS        | CLOTHING    |       1000.00 |         800.00 |    13 |
| P102     | TABLE        | FURNITURE   |       8000.00 |        7500.00 |    14 |
| P105     | WEBCAM       | ELECTRONICS |       7000.00 |        5000.00 |    14 |
| P103     | MOBILE       | ELECTRONICS |      20000.00 |       18000.00 |    20 |
+----------+--------------+-------------+---------------+----------------+-------+
5 rows in set (0.00 sec)

mysql> SELECT * FROM ORDERS ORDER BY STOCK DESC;
+----------+--------------+-------------+---------------+----------------+-------+
| ORDER_ID | PRODUCT_NAME | CATEGORY    | SELLING_PRICE | ORIGINAL_PRICE | STOCK |
+----------+--------------+-------------+---------------+----------------+-------+
| P103     | MOBILE       | ELECTRONICS |      20000.00 |       18000.00 |    20 |
| P102     | TABLE        | FURNITURE   |       8000.00 |        7500.00 |    14 |
| P105     | WEBCAM       | ELECTRONICS |       7000.00 |        5000.00 |    14 |
| P104     | JEANS        | CLOTHING    |       1000.00 |         800.00 |    13 |
| P101     | CHAIR        | FURNITURE   |       6000.00 |        5000.00 |    12 |
+----------+--------------+-------------+---------------+----------------+-------+
5 rows in set (0.00 sec)

mysql> SELECT * FROM ORDERS  ORDER BY STOCK DESC LIMIT 3;
+----------+--------------+-------------+---------------+----------------+-------+
| ORDER_ID | PRODUCT_NAME | CATEGORY    | SELLING_PRICE | ORIGINAL_PRICE | STOCK |
+----------+--------------+-------------+---------------+----------------+-------+
| P103     | MOBILE       | ELECTRONICS |      20000.00 |       18000.00 |    20 |
| P102     | TABLE        | FURNITURE   |       8000.00 |        7500.00 |    14 |
| P105     | WEBCAM       | ELECTRONICS |       7000.00 |        5000.00 |    14 |
+----------+--------------+-------------+---------------+----------------+-------+
3 rows in set (0.00 sec)

mysql> CREATE TABLE EMPLOYEE(EMPLOYEE_ID VARCHAR(10) NOT NULL PRIMARY KEY, EMPLOYEE_NAME VARCHAR(20) NOT NULL, DEPARTMENT VARCHAR(20) NOT NULL, SALARY INT NOT NULL);
Query OK, 0 rows affected (0.04 sec)

mysql> INSERT INTO EMPLOYEE VALUES('E101', 'AADITYA', 'HR', 40000),('E102', 'SNEHA', 'IT', 70000),('E103', 'RIYA', 'IT', 50000),('E104', 'SHREYA', 'HR', 35000),('E105', 'DIYA', 'FINANCE', 5000);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM EMPLOYEE;
+-------------+---------------+------------+--------+
| EMPLOYEE_ID | EMPLOYEE_NAME | DEPARTMENT | SALARY |
+-------------+---------------+------------+--------+
| E101        | AADITYA       | HR         |  40000 |
| E102        | SNEHA         | IT         |  70000 |
| E103        | RIYA          | IT         |  50000 |
| E104        | SHREYA        | HR         |  35000 |
| E105        | DIYA          | FINANCE    |   5000 |
+-------------+---------------+------------+--------+
5 rows in set (0.00 sec)

mysql> SELECT DEPARTMENT, COUNT(*) AS TOTAL_EMPLOYEES FROM EMPLOYEE GROUP BY DEPARTMENT;
+------------+-----------------+
| DEPARTMENT | TOTAL_EMPLOYEES |
+------------+-----------------+
| HR         |               2 |
| IT         |               2 |
| FINANCE    |               1 |
+------------+-----------------+
3 rows in set (0.01 sec)

mysql> -- TO CALCULATE TOTAL SALARY PER DEPARTMENT
mysql> SELECT DEPARTMENT, SUM(SALARY) AS TOTAL_SALARY FROM EMPLOYEE GROUP BY DEPARTMENT;
+------------+--------------+
| DEPARTMENT | TOTAL_SALARY |
+------------+--------------+
| HR         |        75000 |
| IT         |       120000 |
| FINANCE    |         5000 |
+------------+--------------+
3 rows in set (0.00 sec)

mysql> --  CALCULATE AVERAGE SALARY PER DEPARTMENT
mysql> SELECT DEPARTMENT, AVG(SALARY) AS AVERAGE_SALARY FROM EMPLOYEE GROUP BY DEPARTMENT;
+------------+----------------+
| DEPARTMENT | AVERAGE_SALARY |
+------------+----------------+
| HR         |     37500.0000 |
| IT         |     60000.0000 |
| FINANCE    |      5000.0000 |
+------------+----------------+
3 rows in set (0.01 sec)

mysql> SELECT DEPARTMENT, SALARY, COUNT(*) FROM EMPLOYEE GROUP BY DEPARTMENT, SALARY;
+------------+--------+----------+
| DEPARTMENT | SALARY | COUNT(*) |
+------------+--------+----------+
| HR         |  40000 |        1 |
| IT         |  70000 |        1 |
| IT         |  50000 |        1 |
| HR         |  35000 |        1 |
| FINANCE    |   5000 |        1 |
+------------+--------+----------+
5 rows in set (0.00 sec)


mysql> SELECT * FROM EMPLOYEE;
+-------------+---------------+------------+--------+
| EMPLOYEE_ID | EMPLOYEE_NAME | DEPARTMENT | SALARY |
+-------------+---------------+------------+--------+
| E101        | AADITYA       | HR         |  40000 |
| E102        | SNEHA         | IT         |  70000 |
| E103        | RIYA          | IT         |  50000 |
| E104        | SHREYA        | HR         |  35000 |
| E105        | DIYA          | FINANCE    |   5000 |
+-------------+---------------+------------+--------+
5 rows in set (0.00 sec)

mysql> SELECT DEPARTMENT, COUNT(*) AS TOTAL_EMPLOYEE FROM EMPLOYEE GROUP BY DEPARTMENT HAVING COUNT(*) >1;
+------------+----------------+
| DEPARTMENT | TOTAL_EMPLOYEE |
+------------+----------------+
| HR         |              2 |
| IT         |              2 |
+------------+----------------+
2 rows in set (0.00 sec)

mysql> SELECT  DEPARTMENT, SUM(SALARY) AS TOTAL_SALARY FROM EMPLOYEE GROUP BY DEPARTMENT HAVING SUM(SALARY) > 8000;
+------------+--------------+
| DEPARTMENT | TOTAL_SALARY |
+------------+--------------+
| HR         |        75000 |
| IT         |       120000 |
+------------+--------------+
2 rows in set (0.01 sec)

mysql> SELECT  DEPARTMENT, AVG(SALARY) AS AVERAGE_SALARY FROM EMPLOYEE GROUP BY DEPARTMENT HAVING AVG(SALARY) > 5000;
+------------+----------------+
| DEPARTMENT | AVERAGE_SALARY |
+------------+----------------+
| HR         |     37500.0000 |
| IT         |     60000.0000 |
+------------+----------------+
2 rows in set (0.00 sec)


mysql> SHOW TABLES;
+------------------------+
| Tables_in_aggeregation |
+------------------------+
| employee               |
| orders                 |
+------------------------+
2 rows in set (0.01 sec)

mysql> SELECT * FROM orders;
+----------+--------------+-------------+---------------+----------------+-------+
| ORDER_ID | PRODUCT_NAME | CATEGORY    | SELLING_PRICE | ORIGINAL_PRICE | STOCK |
+----------+--------------+-------------+---------------+----------------+-------+
| P101     | CHAIR        | FURNITURE   |       6000.00 |        5000.00 |    12 |
| P102     | TABLE        | FURNITURE   |       8000.00 |        7500.00 |    14 |
| P103     | MOBILE       | ELECTRONICS |      20000.00 |       18000.00 |    20 |
| P104     | JEANS        | CLOTHING    |       1000.00 |         800.00 |    13 |
| P105     | WEBCAM       | ELECTRONICS |       7000.00 |        5000.00 |    14 |
+----------+--------------+-------------+---------------+----------------+-------+
5 rows in set (0.00 sec)

mysql> select * from employee;
+-------------+---------------+------------+--------+
| EMPLOYEE_ID | EMPLOYEE_NAME | DEPARTMENT | SALARY |
+-------------+---------------+------------+--------+
| E101        | AADITYA       | HR         |  40000 |
| E102        | SNEHA         | IT         |  70000 |
| E103        | RIYA          | IT         |  50000 |
| E104        | SHREYA        | HR         |  35000 |
| E105        | DIYA          | FINANCE    |   5000 |
+-------------+---------------+------------+--------+
5 rows in set (0.00 sec)


mysql> alter table employee rename to employee_details;
Query OK, 0 rows affected (0.05 sec)

mysql> select * from employee_details;
+-------------+---------------+------------+--------+
| EMPLOYEE_ID | EMPLOYEE_NAME | DEPARTMENT | SALARY |
+-------------+---------------+------------+--------+
| E101        | AADITYA       | HR         |  40000 |
| E102        | SNEHA         | IT         |  70000 |
| E103        | RIYA          | IT         |  50000 |
| E104        | SHREYA        | HR         |  35000 |
| E105        | DIYA          | FINANCE    |   5000 |
+-------------+---------------+------------+--------+
5 rows in set (0.01 sec)

mysql> select max(stock) from orders;
+------------+
| max(stock) |
+------------+
|         20 |
+------------+
1 row in set (0.00 sec)

mysql> select min(stock) from orders;
+------------+
| min(stock) |
+------------+
|         12 |
+------------+
1 row in set (0.00 sec)

mysql>