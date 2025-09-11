CREATE SCHEMA IF NOT EXISTS sdhub;

USE sdhub;

CREATE TABLE IF NOT EXISTS student_details (
	name VARCHAR(50) NOT NULL,
	age INT CHECK (age >= 0),
	gender CHAR(1) CHECK (gender IN ('M', 'F'))
);