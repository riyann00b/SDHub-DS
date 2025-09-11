-- Display average income by gender, highest first
SELECT
    Gender,
    AVG(Income) AS Avg_Income
FROM
    cardiogoodfitness
GROUP BY
    Gender
ORDER BY
    Avg_Income DESC;

-- Display average usage by product, lowest first
SELECT
    Product,
    AVG(`Usage`) AS avg_usage
FROM
    cardiogoodfitness
GROUP BY
    Product
ORDER BY
    avg_usage ASC;

-- Display average income broken down by both product and gender
SELECT
    Product,
    Gender,
    AVG(income)
FROM
    cardiogoodfitness
GROUP BY
    Product, Gender;

-- Display average income by age, but only for groups older than 30
SELECT
    Age,
    AVG(Income) AS Avg_Income
FROM
    cardiogoodfitness
GROUP BY
    Age
HAVING
    age > 30;

-- Display average income by age, but only for groups with an average income over 50,000
SELECT
    age,
    AVG(income) AS avg_income
FROM
    cardiogoodfitness
GROUP BY
    age
HAVING
    AVG(income) > 50000; -- Using the function is safer than the alias

-- Display student records who are earning above 12000 as an AI Engineer
SELECT *
FROM student_details
WHERE name IN (
    SELECT name
    FROM company
    WHERE role = 'AI' AND salary > 12000
);

-- Display records whose age is above the average age of all students
SELECT *
FROM student_details
WHERE age > (
    SELECT AVG(age)
    FROM student_details
);