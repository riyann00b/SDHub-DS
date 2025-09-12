Windows Function / analytical function -> row level calculation

1. row.num()

| Name | Salary | R   |
| ---- | ------ | --- |
| A    | 100    | 1   |
| B    | 150    | 2   |
| C    | 150    | 3   |
| D    | 200    | 4   |
| E    | 250    | 5   |

2. rank() (skip)


| Rank |
| ---- |
| 1    |
| 2    |
| 2    |
| 4    |
| 5    |

3. dense_rank()


| Rank |
| ---- |
| 1    |
| 2    |
| 2    |
| 3    |
| 4    |

4. Employee 
	1. Name
	2. Salaty

Select name salary rank() over (Order by salary SESC) as R

from employee

output:

| Name | Salary | R   |
| ---- | ------ | --- |
|      |        |     |
|      |        |     |
|      |        |     |
|      |        |     |

# Display rank based on salary in each dept (rank, dense_rank)


| Name | Dept | Salary | R   |
| ---- | ---- | ------ | --- |
| A    | IT   | 1000   | 1   |
| B    | IT   | 800    | 2   |
| C    | IT   | 500    | 3   |
| D    | S    | 2000   | 1   |
| E    | S    | 1500   | 2   |

# Select name, salary, rank() over (partition by dept order by salary Desc) as r

partition by dept -> column name, divide data into segment / dept

# CTE (common Table Expression)

-> To save output table temporarily
-> for further condition / query

with cte_name as (sele.rank_r from where)

select * from cte_name where r = 2 ; -> querying / fetching data from cte

# display top 2nd record

with rank_table as 
(
select name. rank() over (order by salary desc) as r 

from employee
)

select * from rank table where r = 2 ;


# Views

A logical table to save output logically

create view view_name as 
(
Select * From compary order by salary DESC

limmit 3
);

selecct * From view_name;


