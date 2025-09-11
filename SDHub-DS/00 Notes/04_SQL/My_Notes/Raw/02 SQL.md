SQL

database
1. tables
	1. columns
		1. name, datatype

---

1. create database dbname;
2. use dbname;
3. create table table_name(col1 datatype, col2 dataype)
4. drop table table_name;

---
SQL constraints (Rules)
1. primary key -> one or more columns can identify records uniquely
2. foreign key -> Referencing primary key of other table (duplicate record)
3. unique key -> a colum values which identify records uniquely
4. fefault -> setting default value
5. Null -> null value
6. check -> expression based

---

DML
1. Insert into table (col1, col2,...), values(10, 20);, (20, 30);
2. select -> to choose colum 1 field, From -> to choose table

- select * -> all cols, from table name
- select col1, col2 from table_name; -> sepcific column
- select distinct col1 from table; -> uniqur values in cal1


---

Aggregate functions

1. sum()
2. average()
3. count()
4. max()
5. min()

```sql
select average(age) as avgerage.age
from Table_Name;
```


| average.age |     |
| ----------- | --- |
| 23          |     |



---

Importing data from csv

1.  step: right click on a database
2. step: import wizard (data)
3. step: locate CSV file
4. step: next -> next -> finish
5. step: Refresh

---

1. select 2 from
2. where -> to filter table data
	1. text: 
		1. exact; = =, ! =
		2. port: Like 
			1. 1 start: s%
			2. 2 end:%s
			3. 3 contain: %s%
	2. date: exact match -> = = , between() 
	3. numeric: >,<,+,!,=,<=
3. Order by -> to apply sorting a data
4. limit -> tp set output data
