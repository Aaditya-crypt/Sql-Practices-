Enter password: ********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 12
Server version: 8.0.46 MySQL Community Server - GPL

Copyright (c) 2000, 2026, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
4 rows in set (0.11 sec)

mysql> create table ecommerce
    -> ^C
mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
4 rows in set (0.00 sec)


mysql> create database ecommerce;
Query OK, 1 row affected (0.03 sec)

mysql> use ecommerce;
Database changed
mysql> create table customer(customer_id varchar(5) not null primary key, name varchar(10) not null, city varchar(10) not null, email varchar(20) not null, address varchar(100) not null, phone_no varchar(10) not null, pin_code int not null);
Query OK, 0 rows affected (0.06 sec)

mysql> show tables;
+---------------------+
| Tables_in_ecommerce |
+---------------------+
| customer            |
+---------------------+
1 row in set (0.03 sec)

mysql> desc customer;
+-------------+--------------+------+-----+---------+-------+
| Field       | Type         | Null | Key | Default | Extra |
+-------------+--------------+------+-----+---------+-------+
| customer_id | varchar(5)   | NO   | PRI | NULL    |       |
| name        | varchar(10)  | NO   |     | NULL    |       |
| city        | varchar(10)  | NO   |     | NULL    |       |
| email       | varchar(20)  | NO   |     | NULL    |       |
| address     | varchar(100) | NO   |     | NULL    |       |
| phone_no    | varchar(10)  | NO   |     | NULL    |       |
| pin_code    | int          | NO   |     | NULL    |       |
+-------------+--------------+------+-----+---------+-------+
7 rows in set (0.02 sec)

mysql> select * from customer;
Empty set (0.02 sec)

mysql> ALTER TABLE customer
    -> MODIFY email VARCHAR(50);
Query OK, 0 rows affected (0.07 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> INSERT INTO customer
    -> (customer_id, name, city, email, address, phone_no, pin_code)
    -> VALUES
    -> ('c101', 'Aaditya', 'Mumbai',
    -> 'aadityapandey1305@gmail.com',
    -> 'kalyan_east', '7977958803', 421306);
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO customer
    -> (customer_id, name, city, email, address, phone_no, pin_code)
    -> VALUES
    -> ('c101', 'Aaditya', 'Mumbai',
    -> 'aadityapandey1305@gmail.com',

mysql> SELECT * FROM customer;
+-------------+---------+--------+-----------------------------+-------------+------------+----------+
| customer_id | name    | city   | email                       | address     | phone_no   | pin_code |
+-------------+---------+--------+-----------------------------+-------------+------------+----------+
| c101        | Aaditya | Mumbai | aadityapandey1305@gmail.com | kalyan_east | 7977958803 |   421306 |
+-------------+---------+--------+-----------------------------+-------------+------------+----------+
1 row in set (0.00 sec)
       ^C
mysql> select customer_id, name from customer;
+-------------+---------+
| customer_id | name    |
+-------------+---------+
| c101        | Aaditya |
+-------------+---------+
1 row in set (0.00 sec)

mysql> insert into customer values ('c102', 'Sneha', 'Mumbai', 'sneha@gmail.com', 'kalyan_east', '1234567890', '427306');
Query OK, 1 row affected (0.01 sec)

mysql> insert into customer values ('c103', 'neha', 'Mumbai', 'neha@gmail.com', 'kalyan_east', '1234987890', '327306'), ('c104', 'riya', 'Mumbai', 'riya@gmail.com', 'kalyan_west', '7834987890', '367306'), ('c105', 'diya', 'Mumbai', 'diya@gmail.com', 'chinchpada', '1220987890', '327506');
Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> select * from customer
    -> ^C
mysql> select * from customer;
+-------------+---------+--------+-----------------------------+-------------+------------+----------+
| customer_id | name    | city   | email                       | address     | phone_no   | pin_code |
+-------------+---------+--------+-----------------------------+-------------+------------+----------+
| c101        | Aaditya | Mumbai | aadityapandey1305@gmail.com | kalyan_east | 7977958803 |   421306 |
| c102        | Sneha   | Mumbai | sneha@gmail.com             | kalyan_east | 1234567890 |   427306 |
| c103        | neha    | Mumbai | neha@gmail.com              | kalyan_east | 1234987890 |   327306 |
| c104        | riya    | Mumbai | riya@gmail.com              | kalyan_west | 7834987890 |   367306 |
| c105        | diya    | Mumbai | diya@gmail.com              | chinchpada  | 1220987890 |   327506 |
+-------------+---------+--------+-----------------------------+-------------+------------+----------+
5 rows in set (0.00 sec)

mysql> desc customer;
+-------------+--------------+------+-----+---------+-------+
| Field       | Type         | Null | Key | Default | Extra |
+-------------+--------------+------+-----+---------+-------+
| customer_id | varchar(5)   | NO   | PRI | NULL    |       |
| name        | varchar(10)  | NO   |     | NULL    |       |
| city        | varchar(10)  | NO   |     | NULL    |       |
| email       | varchar(50)  | YES  |     | NULL    |       |
| address     | varchar(100) | NO   |     | NULL    |       |
| phone_no    | varchar(10)  | NO   |     | NULL    |       |
| pin_code    | int          | NO   |     | NULL    |       |
+-------------+--------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

mysql> alter table customer modify customer_id varchar(10) not null;
Query OK, 0 rows affected (0.02 sec)
Records: 0  Duplicates: 0  Warnings: 0


mysql> desc customer;
+-------------+--------------+------+-----+---------+-------+
| Field       | Type         | Null | Key | Default | Extra |
+-------------+--------------+------+-----+---------+-------+
| customer_id | varchar(10)  | NO   | PRI | NULL    |       |
| name        | varchar(10)  | NO   |     | NULL    |       |
| city        | varchar(10)  | NO   |     | NULL    |       |
| email       | varchar(50)  | YES  |     | NULL    |       |
| address     | varchar(100) | NO   |     | NULL    |       |
| phone_no    | varchar(10)  | NO   |     | NULL    |       |
| pin_code    | int          | NO   |     | NULL    |       |
+-------------+--------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

mysql> alter table customer add state varchar(10) not null, add country varchar(20);
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0


mysql> desc customer;
+-------------+--------------+------+-----+---------+-------+
| Field       | Type         | Null | Key | Default | Extra |
+-------------+--------------+------+-----+---------+-------+
| customer_id | varchar(10)  | NO   | PRI | NULL    |       |
| name        | varchar(10)  | NO   |     | NULL    |       |
| city        | varchar(10)  | NO   |     | NULL    |       |
| email       | varchar(50)  | YES  |     | NULL    |       |
| address     | varchar(100) | NO   |     | NULL    |       |
| phone_no    | varchar(10)  | NO   |     | NULL    |       |
| pin_code    | int          | NO   |     | NULL    |       |
| state       | varchar(10)  | NO   |     | NULL    |       |
| country     | varchar(20)  | YES  |     | NULL    |       |
+-------------+--------------+------+-----+---------+-------+
9 rows in set (0.00 sec)

mysql> create table demo(demo_id varchar(10) primary key not null);
Query OK, 0 rows affected (0.04 sec)

mysql> desc demo
    -> ^C
mysql> desc demo;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| demo_id | varchar(10) | NO   | PRI | NULL    |       |
+---------+-------------+------+-----+---------+-------+
1 row in set (0.00 sec)

mysql> alter table demo drop primary key;
Query OK, 0 rows affected (0.07 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> alter table demo add primary key (demo_id);
Query OK, 0 rows affected (0.04 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select * from customer;
+-------------+---------+--------+-----------------------------+-------------+------------+----------+-------+---------+
| customer_id | name    | city   | email                       | address     | phone_no   | pin_code | state | country |
+-------------+---------+--------+-----------------------------+-------------+------------+----------+-------+---------+
| c101        | Aaditya | Mumbai | aadityapandey1305@gmail.com | kalyan_east | 7977958803 |   421306 |       | NULL    |
| c102        | Sneha   | Mumbai | sneha@gmail.com             | kalyan_east | 1234567890 |   427306 |       | NULL    |
| c103        | neha    | Mumbai | neha@gmail.com              | kalyan_east | 1234987890 |   327306 |       | NULL    |
| c104        | riya    | Mumbai | riya@gmail.com              | kalyan_west | 7834987890 |   367306 |       | NULL    |
| c105        | diya    | Mumbai | diya@gmail.com              | chinchpada  | 1220987890 |   327506 |       | NULL    |
+-------------+---------+--------+-----------------------------+-------------+------------+----------+-------+---------+
5 rows in set (0.00 sec)

mysql> delete from customer where customer_id='c103';
Query OK, 1 row affected (0.01 sec)

mysql> select * from customer;
+-------------+---------+--------+-----------------------------+-------------+------------+----------+-------+---------+
| customer_id | name    | city   | email                       | address     | phone_no   | pin_code | state | country |
+-------------+---------+--------+-----------------------------+-------------+------------+----------+-------+---------+
| c101        | Aaditya | Mumbai | aadityapandey1305@gmail.com | kalyan_east | 7977958803 |   421306 |       | NULL    |
| c102        | Sneha   | Mumbai | sneha@gmail.com             | kalyan_east | 1234567890 |   427306 |       | NULL    |
| c104        | riya    | Mumbai | riya@gmail.com              | kalyan_west | 7834987890 |   367306 |       | NULL    |
| c105        | diya    | Mumbai | diya@gmail.com              | chinchpada  | 1220987890 |   327506 |       | NULL    |
+-------------+---------+--------+-----------------------------+-------------+------------+----------+-------+---------+
4 rows in set (0.00 sec)

mysql> select * from demo;
Empty set (0.00 sec)

mysql> insert into demo values('103');
Query OK, 1 row affected (0.01 sec)

mysql> desc demo;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| demo_id | varchar(10) | NO   | PRI | NULL    |       |
+---------+-------------+------+-----+---------+-------+
1 row in set (0.00 sec)

mysql> drop table demo;
Query OK, 0 rows affected (0.03 sec)

mysql> create table product(product_id varchar(10) not null primary key, product_name varchar(20) not null, category varchar(10) not null, sub_category varchar(10) not null, original_price double not null, selling_price double not null, stock int not null);
Query OK, 0 rows affected (0.03 sec)

mysql> show tables;
+---------------------+
| Tables_in_ecommerce |
+---------------------+
| customer            |
| product             |
+---------------------+
2 rows in set (0.01 sec)

mysql> create table orders(order_id int(5) not null primary key auto_increment, customer_id varchar(5) not null, product_id varchar(10) not null,quantity int(10) not null, total_price double not null, payment_mode varchar(20) not null, order_date date not null, order_status varchar(20) not null, foreign key (customer_id) references customer (customer_id), foreign key (product_id) references product (product_id) );
Query OK, 0 rows affected, 2 warnings (0.13 sec)

mysql> show tables;
+---------------------+
| Tables_in_ecommerce |
+---------------------+
| customer            |
| orders              |
| product             |
+---------------------+
3 rows in set (0.00 sec)

mysql> desc orders;
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

mysql> create database student_management_system;
Query OK, 1 row affected (0.01 sec)

mysql> create table student(student_id varchar(10) not null primary key, name varchar(20) not null, age int(2) not null, phone_no int(10) not null);
Query OK, 0 rows affected, 2 warnings (0.04 sec)

mysql> show tables;
+---------------------+
| Tables_in_ecommerce |
+---------------------+
| customer            |
| orders              |
| product             |
| student             |
+---------------------+
4 rows in set (0.00 sec)

mysql> desc student;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| student_id | varchar(10) | NO   | PRI | NULL    |       |
| name       | varchar(20) | NO   |     | NULL    |       |
| age        | int         | NO   |     | NULL    |       |
| phone_no   | int         | NO   |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> create table feedback(feedback_id varchar(5) not null primary key, student_id varchar(10) not null, date date not null, instructor_name varchar(20) not null, feedback varchar(50) not null, foreign key (student_id) references student (student_id));
Query OK, 0 rows affected (0.05 sec)

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

mysql> desc feedback;
+-----------------+-------------+------+-----+---------+-------+
| Field           | Type        | Null | Key | Default | Extra |
+-----------------+-------------+------+-----+---------+-------+
| feedback_id     | varchar(5)  | NO   | PRI | NULL    |       |
| student_id      | varchar(10) | NO   | MUL | NULL    |       |
| date            | date        | NO   |     | NULL    |       |
| instructor_name | varchar(20) | NO   |     | NULL    |       |
| feedback        | varchar(50) | NO   |     | NULL    |       |
+-----------------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql>