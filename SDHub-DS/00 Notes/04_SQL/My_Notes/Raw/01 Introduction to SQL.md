SQL = structure query language -> database language

[Tabular]  [Table]  [language]

Rows and column

data -> information

database -> stronge / collection -> stratucred (SQL, DB) -> Unstructured (No SQL DB)

---

DBMS / RDBMS

database
1. sql
	1. cloud: oracal, mySql
	2. local: csv, excel
2. nosql
	1. cloud: MongoDB
	2. local: HDD

---

name age table example

```sql
{
p1 : ['A'],
p2 : ['A', 20],
p3 : ['A', 20, 'M'],
}
```

---
EX

Instagram
user database
1. Nmae, DOB, analysis Mob [Strucuredt]

2. user feed/input
	1. comments,like post , share

---
Type of SQL
1. DDL : Data Destination Language (Structure) can create or modify, mainly working with table columns
2. DML: Data Manipulation Language, (Data) can insert, add, delete, remove, manipulate, modify,  Rows
3. DCL: Data Control Language, (Access control) can grand or revoke access, works with entire database, used by backend devs or admins, database
4. TCL: Transaction Control Language, (Record), can commit or rollback, record transactions, used by back-end devs or admins, 
5. DQL: Data Query Language: (Fetch) -> select data 

 

---
DDL:

statement
1. create -> create table, db
2. alter -> modify -> column
3. ***truncate*** *-> remove all data with effecting sctructure*
4. drop -> delete entire table, db

---

MySQL workbench  interface layout explained 

---
a create database/schema databasename;

use dtabase name : -> too select a database

b create table tablename(name varchar(10) , age int);

sql is not case censiitive 

---

sql qury we run

create schema sdhub;

use Sdhub;

create table student_details
(Name varchar(15), Age int, 
Gender varchar(1));