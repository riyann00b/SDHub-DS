
SELECT gend

-- dispaly avg usage by product in an other'

select Product, avg('Usage') as avg_usage

from


SHOW VARIABLES LIKE 'secure_file_priv';


----


USE sdhub;

CREATE TABLE company(
    Name VARCHAR(20),
    Role VARCHAR(20),
    Salary INT
);

INSERT INTO company (Name, Role, Salary)
VALUES
    ('John', 'Manager', 50000),
    ('Jane', 'Developer', 40000),
    ('Doe', 'Designer', 35000);

SELECT * FROM company;
