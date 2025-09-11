-- Use the database
USE sdhub;

-- Drop table if it exists
DROP TABLE IF EXISTS student_details;

-- Create table
CREATE TABLE student_details (
	StudentID INT PRIMARY KEY AUTO_INCREMENT,
	Name VARCHAR(20),
	Age INT,
	Gender VARCHAR(1)
);


-- Insert sample data
INSERT INTO student_details(Name, Age, Gender)
VALUES
	('Riyan', 22, 'M'),
	('Amaan', 25, 'M'),
	('Adnan', 25, 'M'),
	('Taha', 20, 'M'),
	('Sara', 23, 'F'),
	('Priya', 21, 'F');

-- Select all students
SELECT * FROM student_details;

-- Select students older than 21
SELECT * FROM student_details WHERE Age > 21;

-- Count students by gender
SELECT Gender, COUNT(*) AS Total FROM student_details GROUP BY Gender;

-- Update a student's age
UPDATE student_details SET Age = 26 WHERE Name = 'Amaan';

-- Delete a student
DELETE FROM student_details WHERE Name = 'Taha';

-- Add a new column for Email
ALTER TABLE student_details ADD COLUMN Email VARCHAR(50);

-- Update Email for a student
UPDATE student_details SET Email = 'riyan@example.com' WHERE Name = 'Riyan';

-- Select students with email set
SELECT * FROM student_details WHERE Email IS NOT NULL;

-- display total

SELECT * FROM CardioGoodFitness
