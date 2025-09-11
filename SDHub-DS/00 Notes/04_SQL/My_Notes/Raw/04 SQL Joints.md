# Working with multiple tables 

1. Nested Query: cant fetech data from both (Slow)
2. Joins: can fetch data from both faster


---
# Joins

1. inner Joint
2. left joint
3. right joint
4. outer joint
5. full joint
6. cross joint

```sql
SELECT T1.COL , T2.COL 
FROM T1 LEFT JOIN T2 -- Dfault is inner joint
ON T1.COL = T2.COL;
```


> [!NOTE] 
> Dfault is inner joint if not selected


```sql
SELECT T1.COL, T2.COL
FROM TABLE1 T1 JOIN TABLE2 T2
ON T1.COL = T2.COL;
```

![SQL Joints image](https://miro.medium.com/v2/resize:fit:720/format:webp/1*8WISW1MkCCmNeTfIsJ6f_Q.jpeg)

![]()

---
T1 
1. ID
2. NAME <-
3. AGE

T2 
1. ID
2. ROLE <-
3. SALARY

T3
1. ID
2. LOCATION
3. MNAGER <-

# DIsplay name role manager

```sql
select table.col, ... --table name, colum name
from table joint table  -- table1 , table2
on table.col = table.col; -- t1 common and t2 common
```


```sql
select t.name, t2.role, t3.manager
from t1 joint t2
on t1.id = t2.id join t3
on t1.id = t3.id ;
```


| Name | Role | Manager |
| ---- | ---- | ------- |
|      |      |         |
|      |      |         |
|      |      |         |

---

