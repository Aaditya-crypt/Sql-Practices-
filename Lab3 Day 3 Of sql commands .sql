Enter password: ********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 8
Server version: 8.0.46 MySQL Community Server - GPL

Copyright (c) 2000, 2026, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show databases;
+---------------------------+
| Database                  |
+---------------------------+
| ecommerce                 |
| information_schema        |
| mysql                     |
| performance_schema        |
| student_management_system |
| sys                       |
+---------------------------+
6 rows in set (0.03 sec)

mysql> show tables;
+---------------------+
| Tables_in_ecommerce |
+---------------------+
| customer            |
| feedback            |
| orders              |
| product             |
| student             |
+---------------------+
5 rows in set (0.01 sec)

mysql> select * from customer;
+-------------+---------+--------+-----------------------------+-------------+------------+----------+-------+---------+
| customer_id | name    | city   | email                       | address     | phone_no   | pin_code | state | country |
+-------------+---------+--------+-----------------------------+-------------+------------+----------+-------+---------+
| c101        | Aaditya | Mumbai | aadityapandey1305@gmail.com | kalyan_east | 7977958803 |   421306 |       | NULL    |
| c102        | Sneha   | Mumbai | sneha@gmail.com             | kalyan_east | 1234567890 |   427306 |       | NULL    |
| c104        | riya    | Mumbai | riya@gmail.com              | kalyan_west | 7834987890 |   367306 |       | NULL    |
| c105        | diya    | Mumbai | diya@gmail.com              | chinchpada  | 1220987890 |   327506 |       | NULL    |
+-------------+---------+--------+-----------------------------+-------------+------------+----------+-------+---------+
4 rows in set (0.04 sec)

mysql> update customer set phone_no = '9876543210' where Customer_id='c101';
Query OK, 1 row affected (0.03 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from customer;
+-------------+---------+--------+-----------------------------+-------------+------------+----------+-------+---------+
| customer_id | name    | city   | email                       | address     | phone_no   | pin_code | state | country |
+-------------+---------+--------+-----------------------------+-------------+------------+----------+-------+---------+
| c101        | Aaditya | Mumbai | aadityapandey1305@gmail.com | kalyan_east | 9876543210 |   421306 |       | NULL    |
| c102        | Sneha   | Mumbai | sneha@gmail.com             | kalyan_east | 1234567890 |   427306 |       | NULL    |
| c104        | riya    | Mumbai | riya@gmail.com              | kalyan_west | 7834987890 |   367306 |       | NULL    |
| c105        | diya    | Mumbai | diya@gmail.com              | chinchpada  | 1220987890 |   327506 |       | NULL    |
+-------------+---------+--------+-----------------------------+-------------+------------+----------+-------+---------+
4 rows in set (0.00 sec)

mysql> select * from customer where name like '%ya';
+-------------+---------+--------+-----------------------------+-------------+------------+----------+-------+---------+
| customer_id | name    | city   | email                       | address     | phone_no   | pin_code | state | country |
+-------------+---------+--------+-----------------------------+-------------+------------+----------+-------+---------+
| c101        | Aaditya | Mumbai | aadityapandey1305@gmail.com | kalyan_east | 9876543210 |   421306 |       | NULL    |
| c104        | riya    | Mumbai | riya@gmail.com              | kalyan_west | 7834987890 |   367306 |       | NULL    |
| c105        | diya    | Mumbai | diya@gmail.com              | chinchpada  | 1220987890 |   327506 |       | NULL    |
+-------------+---------+--------+-----------------------------+-------------+------------+----------+-------+---------+
3 rows in set (0.01 sec)

mysql> select * from customer where name like '%e%';
+-------------+-------+--------+-----------------+-------------+------------+----------+-------+---------+
| customer_id | name  | city   | email           | address     | phone_no   | pin_code | state | country |
+-------------+-------+--------+-----------------+-------------+------------+----------+-------+---------+
| c102        | Sneha | Mumbai | sneha@gmail.com | kalyan_east | 1234567890 |   427306 |       | NULL    |
+-------------+-------+--------+-----------------+-------------+------------+----------+-------+---------+
1 row in set (0.00 sec)

mysql> select * from customer where name like 'Aa%';
+-------------+---------+--------+-----------------------------+-------------+------------+----------+-------+---------+
| customer_id | name    | city   | email                       | address     | phone_no   | pin_code | state | country |
+-------------+---------+--------+-----------------------------+-------------+------------+----------+-------+---------+
| c101        | Aaditya | Mumbai | aadityapandey1305@gmail.com | kalyan_east | 9876543210 |   421306 |       | NULL    |
+-------------+---------+--------+-----------------------------+-------------+------------+----------+-------+---------+
1 row in set (0.00 sec)

mysql> select * from customer where name like 'i%';
Empty set (0.00 sec)

mysql> select * from customer where address like 'al%';
Empty set (0.00 sec)

mysql> select * from customer where address like 'kal%';
+-------------+---------+--------+-----------------------------+-------------+------------+----------+-------+---------+
| customer_id | name    | city   | email                       | address     | phone_no   | pin_code | state | country |
+-------------+---------+--------+-----------------------------+-------------+------------+----------+-------+---------+
| c101        | Aaditya | Mumbai | aadityapandey1305@gmail.com | kalyan_east | 9876543210 |   421306 |       | NULL    |
| c102        | Sneha   | Mumbai | sneha@gmail.com             | kalyan_east | 1234567890 |   427306 |       | NULL    |
| c104        | riya    | Mumbai | riya@gmail.com              | kalyan_west | 7834987890 |   367306 |       | NULL    |
+-------------+---------+--------+-----------------------------+-------------+------------+----------+-------+---------+
3 rows in set (0.00 sec)

mysql> -- used to find any row by wordings
mysql> select * from customer  where name like 'A___';
Empty set (0.00 sec)

mysql> select * from customer  where name like 'A______';
+-------------+---------+--------+-----------------------------+-------------+------------+----------+-------+---------+
| customer_id | name    | city   | email                       | address     | phone_no   | pin_code | state | country |
+-------------+---------+--------+-----------------------------+-------------+------------+----------+-------+---------+
| c101        | Aaditya | Mumbai | aadityapandey1305@gmail.com | kalyan_east | 9876543210 |   421306 |       | NULL    |
+-------------+---------+--------+-----------------------------+-------------+------------+----------+-------+---------+
1 row in set (0.00 sec)

mysql> select * from customer  where address like 'c________';
Empty set (0.00 sec)

mysql> select * from customer  where address like 'c_________';
+-------------+------+--------+----------------+------------+------------+----------+-------+---------+
| customer_id | name | city   | email          | address    | phone_no   | pin_code | state | country |
+-------------+------+--------+----------------+------------+------------+----------+-------+---------+
| c105        | diya | Mumbai | diya@gmail.com | chinchpada | 1220987890 |   327506 |       | NULL    |
+-------------+------+--------+----------------+------------+------------+----------+-------+---------+
1 row in set (0.00 sec)

mysql> -- adding more 4 records
mysql> insert into customer values
    -> ('c106','renuka','gujrat','renuka@gmail.com',
    -> 'gandhi nagar','2345678901',382010,'gujrat','india');
Query OK, 1 row affected (0.01 sec)

mysql> show tables;
+---------------------+
| Tables_in_ecommerce |
+---------------------+
| customer            |
| feedback            |
| orders              |
| product             |
| student             |
+---------------------+
5 rows in set (0.00 sec)

mysql> use ecommerce;
Database changed
mysql> show tables;
+---------------------+
| Tables_in_ecommerce |
+---------------------+
| customer            |
| feedback            |
| orders              |
| product             |
| student             |
+---------------------+
5 rows in set (0.00 sec)

mysql> select * from customer;
+-------------+---------+--------+-----------------------------+--------------+------------+----------+--------+---------+
| customer_id | name    | city   | email                       | address      | phone_no   | pin_code | state  | country |
+-------------+---------+--------+-----------------------------+--------------+------------+----------+--------+---------+
| c101        | Aaditya | Mumbai | aadityapandey1305@gmail.com | kalyan_east  | 9876543210 |   421306 |        | NULL    |
| c102        | Sneha   | Mumbai | sneha@gmail.com             | kalyan_east  | 1234567890 |   427306 |        | NULL    |
| c104        | riya    | Mumbai | riya@gmail.com              | kalyan_west  | 7834987890 |   367306 |        | NULL    |
| c105        | diya    | Mumbai | diya@gmail.com              | chinchpada   | 1220987890 |   327506 |        | NULL    |
| c106        | renuka  | gujrat | renuka@gmail.com            | gandhi nagar | 2345678901 |   382010 | gujrat | india   |
+-------------+---------+--------+-----------------------------+--------------+------------+----------+--------+---------+
5 rows in set (0.00 sec)

mysql> select * from customer limit 2;
+-------------+---------+--------+-----------------------------+-------------+------------+----------+-------+---------+
| customer_id | name    | city   | email                       | address     | phone_no   | pin_code | state | country |
+-------------+---------+--------+-----------------------------+-------------+------------+----------+-------+---------+
| c101        | Aaditya | Mumbai | aadityapandey1305@gmail.com | kalyan_east | 9876543210 |   421306 |       | NULL    |
| c102        | Sneha   | Mumbai | sneha@gmail.com             | kalyan_east | 1234567890 |   427306 |       | NULL    |
+-------------+---------+--------+-----------------------------+-------------+------------+----------+-------+---------+
2 rows in set (0.00 sec)

mysql> insert into customer values
    -> ('c107','renuka','gujrat','renuka@gmail.com',
    -> 'nagpur','2345678',38010,'gujrat','india');
Query OK, 1 row affected (0.01 sec)

mysql> -- select distint is used to eleminate similar record from the table

mysql> select * from product;
Empty set (0.03 sec)

mysql> desc product;
+----------------+-------------+------+-----+---------+-------+
| Field          | Type        | Null | Key | Default | Extra |
+----------------+-------------+------+-----+---------+-------+
| product_id     | varchar(10) | NO   | PRI | NULL    |       |
| product_name   | varchar(20) | NO   |     | NULL    |       |
| category       | varchar(10) | NO   |     | NULL    |       |
| sub_category   | varchar(10) | NO   |     | NULL    |       |
| original_price | double      | NO   |     | NULL    |       |
| selling_price  | double      | NO   |     | NULL    |       |
| stock          | int         | NO   |     | NULL    |       |
+----------------+-------------+------+-----+---------+-------+
7 rows in set (0.03 sec)

mysql> select * from customer where pin_code>367306;
+-------------+---------+--------+-----------------------------+--------------+------------+----------+--------+---------+
| customer_id | name    | city   | email                       | address      | phone_no   | pin_code | state  | country |
+-------------+---------+--------+-----------------------------+--------------+------------+----------+--------+---------+
| c101        | Aaditya | Mumbai | aadityapandey1305@gmail.com | kalyan_east  | 9876543210 |   421306 |        | NULL    |
| c102        | Sneha   | Mumbai | sneha@gmail.com             | kalyan_east  | 1234567890 |   427306 |        | NULL    |
| c106        | renuka  | gujrat | renuka@gmail.com            | gandhi nagar | 2345678901 |   382010 | gujrat | india   |
+-------------+---------+--------+-----------------------------+--------------+------------+----------+--------+---------+
3 rows in set (0.00 sec)

mysql> select * from customer where pin_code<367306;
+-------------+--------+--------+------------------+------------+------------+----------+--------+---------+
| customer_id | name   | city   | email            | address    | phone_no   | pin_code | state  | country |
+-------------+--------+--------+------------------+------------+------------+----------+--------+---------+
| c105        | diya   | Mumbai | diya@gmail.com   | chinchpada | 1220987890 |   327506 |        | NULL    |
| c107        | renuka | gujrat | renuka@gmail.com | nagpur     | 2345678    |    38010 | gujrat | india   |
+-------------+--------+--------+------------------+------------+------------+----------+--------+---------+
2 rows in set (0.00 sec)

mysql> select * from customer where pin_code<=367306;
+-------------+--------+--------+------------------+-------------+------------+----------+--------+---------+
| customer_id | name   | city   | email            | address     | phone_no   | pin_code | state  | country |
+-------------+--------+--------+------------------+-------------+------------+----------+--------+---------+
| c104        | riya   | Mumbai | riya@gmail.com   | kalyan_west | 7834987890 |   367306 |        | NULL    |
| c105        | diya   | Mumbai | diya@gmail.com   | chinchpada  | 1220987890 |   327506 |        | NULL    |
| c107        | renuka | gujrat | renuka@gmail.com | nagpur      | 2345678    |    38010 | gujrat | india   |
+-------------+--------+--------+------------------+-------------+------------+----------+--------+---------+
3 rows in set (0.00 sec)

mysql> select * from customer where pin_code>=367306;
+-------------+---------+--------+-----------------------------+--------------+------------+----------+--------+---------+
| customer_id | name    | city   | email                       | address      | phone_no   | pin_code | state  | country |
+-------------+---------+--------+-----------------------------+--------------+------------+----------+--------+---------+
| c101        | Aaditya | Mumbai | aadityapandey1305@gmail.com | kalyan_east  | 9876543210 |   421306 |        | NULL    |
| c102        | Sneha   | Mumbai | sneha@gmail.com             | kalyan_east  | 1234567890 |   427306 |        | NULL    |
| c104        | riya    | Mumbai | riya@gmail.com              | kalyan_west  | 7834987890 |   367306 |        | NULL    |
| c106        | renuka  | gujrat | renuka@gmail.com            | gandhi nagar | 2345678901 |   382010 | gujrat | india   |
+-------------+---------+--------+-----------------------------+--------------+------------+----------+--------+---------+
4 rows in set (0.00 sec)

mysql> select distinct city from customer;
+--------+
| city   |
+--------+
| Mumbai |
| gujrat |
+--------+
2 rows in set (0.01 sec)

mysql> select * from customer where name = 'riya' AND pin_code = 367306;
+-------------+------+--------+----------------+-------------+------------+----------+-------+---------+
| customer_id | name | city   | email          | address     | phone_no   | pin_code | state | country |
+-------------+------+--------+----------------+-------------+------------+----------+-------+---------+
| c104        | riya | Mumbai | riya@gmail.com | kalyan_west | 7834987890 |   367306 |       | NULL    |
+-------------+------+--------+----------------+-------------+------------+----------+-------+---------+
1 row in set (0.03 sec)

mysql> select * from customer where name = 'riya' OR pin_code = 367306;
+-------------+------+--------+----------------+-------------+------------+----------+-------+---------+
| customer_id | name | city   | email          | address     | phone_no   | pin_code | state | country |
+-------------+------+--------+----------------+-------------+------------+----------+-------+---------+
| c104        | riya | Mumbai | riya@gmail.com | kalyan_west | 7834987890 |   367306 |       | NULL    |
+-------------+------+--------+----------------+-------------+------------+----------+-------+---------+
1 row in set (0.00 sec)

mysql> select * from customer where customer_id between 'c102' and 'c104';
+-------------+-------+--------+-----------------+-------------+------------+----------+-------+---------+
| customer_id | name  | city   | email           | address     | phone_no   | pin_code | state | country |
+-------------+-------+--------+-----------------+-------------+------------+----------+-------+---------+
| c102        | Sneha | Mumbai | sneha@gmail.com | kalyan_east | 1234567890 |   427306 |       | NULL    |
| c104        | riya  | Mumbai | riya@gmail.com  | kalyan_west | 7834987890 |   367306 |       | NULL    |
+-------------+-------+--------+-----------------+-------------+------------+----------+-------+---------+
2 rows in set (0.01 sec)

mysql> select * from customer where customer_id not between 'c102' and 'c104';
+-------------+---------+--------+-----------------------------+--------------+------------+----------+--------+---------+
| customer_id | name    | city   | email                       | address      | phone_no   | pin_code | state  | country |
+-------------+---------+--------+-----------------------------+--------------+------------+----------+--------+---------+
| c101        | Aaditya | Mumbai | aadityapandey1305@gmail.com | kalyan_east  | 9876543210 |   421306 |        | NULL    |
| c105        | diya    | Mumbai | diya@gmail.com              | chinchpada   | 1220987890 |   327506 |        | NULL    |
| c106        | renuka  | gujrat | renuka@gmail.com            | gandhi nagar | 2345678901 |   382010 | gujrat | india   |
| c107        | renuka  | gujrat | renuka@gmail.com            | nagpur       | 2345678    |    38010 | gujrat | india   |
+-------------+---------+--------+-----------------------------+--------------+------------+----------+--------+---------+
4 rows in set (0.00 sec)

mysql> select * from customer where customer_id in ('c101', 'c103', 'c104');
+-------------+---------+--------+-----------------------------+-------------+------------+----------+-------+---------+
| customer_id | name    | city   | email                       | address     | phone_no   | pin_code | state | country |
+-------------+---------+--------+-----------------------------+-------------+------------+----------+-------+---------+
| c101        | Aaditya | Mumbai | aadityapandey1305@gmail.com | kalyan_east | 9876543210 |   421306 |       | NULL    |
| c104        | riya    | Mumbai | riya@gmail.com              | kalyan_west | 7834987890 |   367306 |       | NULL    |
+-------------+---------+--------+-----------------------------+-------------+------------+----------+-------+---------+
2 rows in set (0.00 sec)

mysql> select * from customer where customer_id not  in ('c101', 'c103', 'c104');
+-------------+--------+--------+------------------+--------------+------------+----------+--------+---------+
| customer_id | name   | city   | email            | address      | phone_no   | pin_code | state  | country |
+-------------+--------+--------+------------------+--------------+------------+----------+--------+---------+
| c102        | Sneha  | Mumbai | sneha@gmail.com  | kalyan_east  | 1234567890 |   427306 |        | NULL    |
| c105        | diya   | Mumbai | diya@gmail.com   | chinchpada   | 1220987890 |   327506 |        | NULL    |
| c106        | renuka | gujrat | renuka@gmail.com | gandhi nagar | 2345678901 |   382010 | gujrat | india   |
| c107        | renuka | gujrat | renuka@gmail.com | nagpur       | 2345678    |    38010 | gujrat | india   |
+-------------+--------+--------+------------------+--------------+------------+----------+--------+---------+
4 rows in set (0.00 sec)

mysql> select * from customer where email is null;
Empty set (0.00 sec)

mysql> select * from customer where email is not null;
+-------------+---------+--------+-----------------------------+--------------+------------+----------+--------+---------+
| customer_id | name    | city   | email                       | address      | phone_no   | pin_code | state  | country |
+-------------+---------+--------+-----------------------------+--------------+------------+----------+--------+---------+
| c101        | Aaditya | Mumbai | aadityapandey1305@gmail.com | kalyan_east  | 9876543210 |   421306 |        | NULL    |
| c102        | Sneha   | Mumbai | sneha@gmail.com             | kalyan_east  | 1234567890 |   427306 |        | NULL    |
| c104        | riya    | Mumbai | riya@gmail.com              | kalyan_west  | 7834987890 |   367306 |        | NULL    |
| c105        | diya    | Mumbai | diya@gmail.com              | chinchpada   | 1220987890 |   327506 |        | NULL    |
| c106        | renuka  | gujrat | renuka@gmail.com            | gandhi nagar | 2345678901 |   382010 | gujrat | india   |
| c107        | renuka  | gujrat | renuka@gmail.com            | nagpur       | 2345678    |    38010 | gujrat | india   |
+-------------+---------+--------+-----------------------------+--------------+------------+----------+--------+---------+
6 rows in set (0.00 sec)

mysql>