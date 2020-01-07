mysql> create database datarep;
Query OK, 1 row affected (0.01 sec)

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| datarep            |
| datarepresentation |
| information_schema |
| mysql              |
| performance_schema |
| sakila             |
| sys                |
| world              |
+--------------------+
8 rows in set (0.00 sec)

mysql> use datarep;
Database changed
mysql> show tables;
Empty set (0.00 sec)

mysql> create table(
    -> id not NULL auto_increment,
    -> firstname varchar(100),
    -> age int(3),
    -> PRIMARY KEY(id));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '(
id not NULL auto_increment,
firstname varchar(100),
age int(3),
PRIMARY KEY(id' at line 1
mysql> create table(
    -> id NOT NULL auto_increment,
    -> firstname varchar(100),
    -> age int(3),
    -> PRIMARY KEY(id)
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '(
id NOT NULL auto_increment,
firstname varchar(100),
age int(3),
PRIMARY KEY(id' at line 1
mysql> create table(
    -> id INT NOT NULL auto_increment,
    -> age int(3),
    -> firstname varchar(100),^C
mysql> create table(
    -> id INT NOT NULL auto_increment,
    -> firstname varchar(100),
    -> age int(3),
    -> PRIMARY KEY(id)
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '(
id INT NOT NULL auto_increment,
firstname varchar(100),
age int(3),
PRIMARY KE' at line 1
mysql> create table student(
    -> id INT NOT NULL auto_increment,
    -> firstname varchar(100),
    -> age int(3),
    -> PRIMARY KEY(id)
    -> );
Query OK, 0 rows affected, 1 warning (0.08 sec)

mysql> insert into student (firstname, age) values ('joe',56);
Query OK, 1 row affected (0.01 sec)

mysql> select * from student;
+----+-----------+------+
| id | firstname | age  |
+----+-----------+------+
|  1 | joe       |   56 |
+----+-----------+------+
1 row in set (0.00 sec)

mysql> update student set firstname='mary' where id = 1;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from student;
+----+-----------+------+
| id | firstname | age  |
+----+-----------+------+
|  1 | mary      |   56 |
+----+-----------+------+
1 row in set (0.00 sec)

mysql> delete student where id = 1;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'where id = 1' at line 1
mysql> delete from student where id = 1;
Query OK, 1 row affected (0.01 sec)

mysql> select * from student;
Empty set (0.00 sec)