# Advanced SQL: Window Functions, CTEs, and Views

A comprehensive Notes to understanding and using advanced SQL features like Window Functions, Common Table Expressions (CTEs), and Views in SQL/MariaDB.

---

## 1. Window Functions (Analytical Functions)

Window functions perform calculations across a set of table rows that are somehow related to the current row. This is comparable to the type of calculation that can be done with an aggregate function. However, window functions do not cause rows to become grouped into a single output row; the rows retain their separate identities.

> [!NOTE] What is a Window Function?
> A window function performs a **row-level calculation** over a "window" (a set of related rows) without collapsing the rows like a `GROUP BY` clause does.

### Ranking Functions

These are a common type of window function used to assign a rank to rows based on a specific order.

#### `ROW_NUMBER()`

Assigns a unique, sequential integer to each row.
- **Ties**: If there are duplicate values in the ordering column, `ROW_NUMBER()` will assign a different number to each one arbitrarily.

#### `RANK()`

Assigns a rank to each row within a partition.
- **Ties**: If two rows have the same value, they receive the same rank. However, the next rank in the sequence will be skipped. (e.g., 1, 2, 2, 4).

#### `DENSE_RANK()`

Assigns a rank to each row, similar to `RANK()`.
- **Ties**: If two rows have the same value, they receive the same rank, but the next rank in the sequence is **not** skipped. (e.g., 1, 2, 2, 3).

### Comparison of Ranking Functions

Let's see how these functions work on a sample `Employee` table.

**Sample Data:**

| Name | Salary |
| :--- | -----: |
| A    | 100    |
| B    | 150    |
| C    | 150    |
| D    | 200    |
| E    | 250    |

**Query:**
```sql
SELECT
    Name,
    Salary,
    ROW_NUMBER() OVER (ORDER BY Salary) AS row_num,
    RANK() OVER (ORDER BY Salary) AS rnk,
    DENSE_RANK() OVER (ORDER BY Salary) AS dense_rnk
FROM
    Employee;
```

**Result:**

| Name | Salary | row_num | rnk | dense_rnk |
| :--- | -----: | ------: | --: | --------: |
| A    | 100    | 1       | 1   | 1         |
| B    | 150    | 2       | 2   | 2         |
| C    | 150    | 3       | 2   | 2         |
| D    | 200    | 4       | 4   | 3         |
| E    | 250    | 5       | 5   | 4         |

> [!TIP] `RANK()` vs. `DENSE_RANK()`
> The key difference is how they handle the rank after a tie. `RANK()` creates gaps, while `DENSE_RANK()` does not. Choose `DENSE_RANK()` when you need a consecutive rank sequence.

---

### The `OVER()` Clause and `PARTITION BY`

The `OVER()` clause is what defines a function as a window function. The `PARTITION BY` sub-clause divides the rows into smaller "windows" or groups. The window function is then applied independently to each partition.

> [!INFO] `PARTITION BY`
> This clause divides the data into segments (e.g., departments, roles). The ranking or calculation restarts for each new segment.

#### Example: Rank Employees by Salary within Each Department

Let's rank employees based on their salary, but have the rank restart for each unique `Role`.

**Query:**
```sql
select
    Name,
    Role,
    Salary,
    dense_rank() over(partition by Role order by Salary Desc) as R
from
    company;
```

**Result:**

| Name | Dept | Salary | R   |
| :--- | :--- | -----: | --: |
| D    | S    | 2000   | 1   |
| E    | S    | 1500   | 2   |
| A    | IT   | 1000   | 1   |
| B    | IT   | 800    | 2   |
| C    | IT   | 500    | 3   |

---

## 2. CTE (Common Table Expression)

A CTE is a temporary, named result set that you can reference within another `SELECT`, `INSERT`, `UPDATE`, or `DELETE` statement. CTEs are defined using the `WITH` clause.

> [!NOTE] What is a CTE?
> A CTE allows you to save the output of a query temporarily. This makes complex queries more readable and easier to manage by breaking them down into logical, sequential steps.

#### Example: Display the 3rd Highest Salaried Employee

Using a window function inside a CTE makes it easy to filter on the rank.

**Query:**
```sql
with rank_table as (
    select
        name,
        role,
        salary,
        dense_rank() over(order by salary Desc) as r
    from
        company
)
select
    *
from
    rank_table
where
    r = 3;

```

**Explanation:**
1.  The `WITH rank_table AS (...)` block defines our CTE. It selects all employees and ranks them by salary.
2.  The final `SELECT * FROM rank_table...` query fetches data from the temporary `rank_table` result set.
3.  The `WHERE r = 3` clause filters for the employee(s) with the third-highest salary.

---

## 3. Views

A view is a virtual table based on the result-set of an SQL statement. It contains rows and columns, just like a real table. The fields in a view are fields from one or more real tables in the database.

> [!WARNING] What is a View?
> A View is a **logical, saved query** that acts like a table. It doesn't store data itself but provides a simplified, secure, or consistent way to look at data from underlying tables.

#### Example: Create a View for Top 3 Employees by Salary

This creates a persistent virtual table named `top3` that can be queried at any time.

**Creating the View:**
```sql
create view top3 as(
    select
        *
    from
        company
    order by
        salary DESC
    limit 3
);
```

**Querying the View:**
Once created, you can query the view just like any other table.
```sql
select
    *
from
    top3;
```

This will always show the current top 3 employees by salary from the `company` table.