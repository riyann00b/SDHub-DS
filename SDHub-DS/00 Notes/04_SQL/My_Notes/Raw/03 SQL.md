1. Select -> select columns
2. From -> selects Tab
3. Where -> Filter 
4. order by -> sorting
5. Limit -> Fixed records
6. groupby -> Grouping data

# Display avg income by sender

income = Num

sender = column

Groupby
1. Unique category
2. Aggregation

| Product | Num |
| ------- | --- |
| A       | 4   |
| B       | 2   |
| C       | 3   |
| A       | 1   |
| A       | 2   |
| B       | 1   |
 
 Split Groupby -> 

| A   | 4   |
| --- | --- |
| A   | 1   |
| A   | 2   |

combined aggr ->


| A   | 7   |
| --- | --- |
| B   | 3   |
| C   | 3   |

---

Select gender , avg (Income)

from cardio

Group Gender;

order by avg(income) asc

limit + 2;

-> sumarizing data (similar to pivot table)



---

having -> filter group data 

| Dept | Salary |
| ---- | ------ |
| ACC  | 1000   |
| IT   | 100    |
| IT   | 1000   |
| CS   | 2000   |
| IT   | 1500   |
| CS   | 3000   |

# display dept by salary excluded salary below 1000, also exclude group if total salary below 1500.

->

| Dept | Salary |
| ---- | ------ |
| acc  | 1000   |
| it   | 2500   |
| cs   | 500    |

---

# note:

1. where can be used for ungroup data (Table) having can be useed for group data (pivot table)
2. writing: where -> groupby -> having -> order by -> limit ....
3. group by can group data based on discrete number or catogories
4. where and having can also be used together

Question: Display AVS income by education exclude education below and sroup below soooo?

---

Nested queries (Query within a Query)

Select 
from
where condition --> outer quary IN (select column, from where condition); _> inner query_

1. inner query first
2. column in where cand of outer query must be same in inner quary select 

---

| Name | Age | Gender |
| ---- | --- | ------ |
| A    | 18  | M      |
| B    | 24  | F      |
| C    | 34  | M      |

| Name | Role | salary |
| ---- | ---- | ------ |
| A    | DA   | 1000   |
| B    | AI   | 2000   |
| C    | DA   | 4500   |
rule:
outer query -> fetch data
Inner query -> condition (T1, T2)

### Display record who are working as DA?

select * from T1 
where name in (select name from t2 wher role = 'DA');

| Name | Age | Gender |
| ---- | --- | ------ |
| A    | 18  | M      |
| C    | 34  | M      |

Display recoards whoes income is above averge income ?


T1

| Name | Role | Salary |
| ---- | ---- | ------ |
| A    | DA   | 1200   |
| B    | DA   | 1000   |
| C    | DA   | 2000   |
| D    | AI   | 4000   |
|      |      |        |

select * From T1 whre salary > (Select avs(salary) From T1)

---


