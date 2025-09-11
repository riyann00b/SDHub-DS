SELECT student_details.Name, student_details.age,
company.Role, company.Salary
FROM student_details
JOIN company ON student_details.Name = company.Name;

-- display role salaty by there name

SELECT company.Name, company.Role, student_details.Gender
FROM company join  student_details
on company.Name = student_details.Name;

-- Making alies for student details and company
SELECT sd.Name, sd.Age, cm.Role, cm.Salary
FROM student_details AS sd
JOIN company AS cm ON sd.Name = cm.Name;


-- display total salary for male
SELECT cm.Salary, sd.Gender
FROM company cm join student_details sd
ON cm.Name = sd.Name
WHERE sd.Gender = 'M';

-- display role wise average age
SELECT avg(sd.Age) as avg_age, cm.Role
from company cm join student_details sd
on cm.Name = sd.Name
group by cm.Role
order by avg_age desc;

-- display student details whose age is above avg age
SELECT Name, Age, Gender
FROM student_details
WHERE Age > (SELECT AVG(Age) FROM student_details);


-- create table reportung details

DROP TABLE reporting_details;

CREATE TABLE reporting_details (
    ReportID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(20),
    Role VARCHAR(20),
    ID int
);

INSERT INTO reporting_details(Name, Role, ID) VALUES
    ('Riyan', 'Manager', 101),
    ('Amaan', 'Employee', 101),
    ('Adnan', 'Employee', 102),
    ('Sara', 'Manager', 102),
    ('Priya', 'Manager', 103);


-- display student details whos age is above avg age
select sd.Name, sd.Age, sd.Gender, test.Name
from student_details sd join student_details test
on sd.name = test.Name
where test.Name!='Sara';

--

select rt.Name, rt.Role, rt.ID, test.ID
From reporting_details rt join reporting_details test
on rt.ID = test.ID and rt.ID = 102 ;

SELECT Name, Role, ID
FROM reporting_details
WHERE ID = 102;

DELETE FROM reporting_details
WHERE ReportID NOT IN (
    SELECT MIN(ReportID)
    FROM reporting_details
    GROUP BY Name, Role, ID
);

