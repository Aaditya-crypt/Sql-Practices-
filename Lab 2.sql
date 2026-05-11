Enter password: ********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 9
Server version: 8.0.46 MySQL Community Server - GPL

Copyright (c) 2000, 2026, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> create database BankDB;
Query OK, 1 row affected (0.02 sec)

mysql> use BankDB;
Database changed

mysql> create table BankAccount(account_id INT PRIMARY KEY, account_holder_name VARCHAR(100), account_balance DECIMAL(10,2));
Query OK, 0 rows affected (0.06 sec)

mysql> -- Task 1: Insert Data
mysql> -- Purpose: Insert records into the BankAccount table

mysql> INSERT INTO BankAccount (account_id, account_holder_name, account_balance)VALUES(101, 'Rahul Sharma', 45000), (102, 'Priya Verma', 28000), (103, 'Amit Singh', 52000), (104, 'Neha Gupta', 15000);
Query OK, 4 rows affected (0.02 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> desc BankAccount;
+---------------------+---------------+------+-----+---------+-------+
| Field               | Type          | Null | Key | Default | Extra |
+---------------------+---------------+------+-----+---------+-------+
| account_id          | int           | NO   | PRI | NULL    |       |
| account_holder_name | varchar(100)  | YES  |     | NULL    |       |
| account_balance     | decimal(10,2) | YES  |     | NULL    |       |
+---------------------+---------------+------+-----+---------+-------+
3 rows in set (0.01 sec)


-- Task 2: Retrieve Data
-- Purpose: Display account holder names and balances

mysql> SELECT account_holder_name, account_balance FROM BankAccount;
+---------------------+-----------------+
| account_holder_name | account_balance |
+---------------------+-----------------+
| Rahul Sharma        |        45000.00 |
| Priya Verma         |        28000.00 |
| Amit Singh          |        52000.00 |
| Neha Gupta          |        15000.00 |
+---------------------+-----------------+
4 rows in set (0.00 sec)

mysql> -- Task 3: Filter Data
mysql> -- Purpose: Show account holders with balance > 30000
mysql> SELECT account_holder_name, account_balance FROM BankAccount WHERE account_balance > 30000;
+---------------------+-----------------+
| account_holder_name | account_balance |
+---------------------+-----------------+
| Rahul Sharma        |        45000.00 |
| Amit Singh          |        52000.00 |
+---------------------+-----------------+
2 rows in set (0.01 sec)

mysql> -- Task 4: Update Data
mysql> -- Purpose: Update balance of account holder with ID 101
mysql> UPDATE BankAccount SET account_balance = 50000 WHERE account_id = 101;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> SELECT * FROM BankAccount;
+------------+---------------------+-----------------+
| account_id | account_holder_name | account_balance |
+------------+---------------------+-----------------+
|        101 | Rahul Sharma        |        50000.00 |
|        102 | Priya Verma         |        28000.00 |
|        103 | Amit Singh          |        52000.00 |
|        104 | Neha Gupta          |        15000.00 |
+------------+---------------------+-----------------+
4 rows in set (0.00 sec)

mysql>