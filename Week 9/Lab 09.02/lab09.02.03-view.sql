
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

mysql> use datarepresentation;
Database changed
mysql> show tables;
+------------------------------+
| Tables_in_datarepresentation |
+------------------------------+
| book                         |
| student                      |
+------------------------------+
2 rows in set (0.00 sec)

mysql> select * from student;
+----+------+------+
| id | name | age  |
+----+------+------+
|  1 | Mary |   21 |
+----+------+------+
1 row in set (0.00 sec)