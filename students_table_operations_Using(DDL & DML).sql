-- ------------------------------------------------------
-- 💾 DATABASE CREATION & SETUP
-- ------------------------------------------------------

-- Show existing databases
SHOW DATABASES;

-- Create a new database named 'DDL'
CREATE DATABASE DDL;

-- Use the created database
USE DDL;

-- ------------------------------------------------------
-- 🧱 TABLE CREATION (DDL COMMANDS)
-- ------------------------------------------------------

-- Create a table named 'Students'
CREATE TABLE Students (
    std_roll VARCHAR(10),
    std_name CHAR(30),
    age INT,
    Country VARCHAR(30)
);

-- Display the table structure
DESCRIBE Students;

-- ------------------------------------------------------
-- 🧾 DATA INSERTION (DML COMMANDS)
-- ------------------------------------------------------

-- Insert student records into the Students table
INSERT INTO Students VALUES
('01', 'a', 22, 'India'),
('02', 'B', 21, 'Nepal'),
('03', 'C', 20, 'Sri Lanka'),
('04', 'D', 21, 'Bhutan');

-- View all records
SELECT * FROM Students;

-- ------------------------------------------------------
-- 🧰 UPDATING EXISTING RECORDS
-- ------------------------------------------------------

-- Disable SQL safe updates (optional, for updating without WHERE key)
SET SQL_SAFE_UPDATES = 0;

-- Update lowercase 'a' to uppercase 'A'
UPDATE Students
SET std_name = 'A'
WHERE std_name = 'a';

-- Check the updated result
SELECT * FROM Students;

-- ------------------------------------------------------
-- 🔧 ALTER TABLE COMMANDS (DDL)
-- ------------------------------------------------------

-- Add a new column for gender
ALTER TABLE Students
ADD std_gender VARCHAR(6);

-- Verify new structure
SELECT * FROM Students;

-- Update the gender for each student using CASE expression
UPDATE Students
SET std_gender = CASE
    WHEN std_name = 'A' THEN 'Male'
    WHEN std_name = 'B' THEN 'Female'
    WHEN std_name = 'C' THEN 'Male'
    WHEN std_name = 'D' THEN 'Female'
    ELSE std_gender
END
WHERE std_name IN ('A', 'B', 'C', 'D');

-- Rename the column 'std_gender' to 'sex'
ALTER TABLE Students
RENAME COLUMN std_gender TO sex;

-- Add a new column 'Nick_name'
ALTER TABLE Students
ADD Nick_name VARCHAR(20);

-- Drop the 'Nick_name' column
ALTER TABLE Students
DROP COLUMN Nick_name;

-- ------------------------------------------------------
-- 🧹 TRUNCATE TABLE (DML)
-- ------------------------------------------------------

-- Delete all records from Students table but keep the structure
TRUNCATE TABLE Students;

-- Verify empty table
SELECT * FROM Students;

-- ------------------------------------------------------
-- 🧾 RE-INSERTING DATA
-- ------------------------------------------------------

-- Insert data again including gender
INSERT INTO Students VALUES
('01', 'A', 22, 'India', 'Male'),
('02', 'B', 21, 'Nepal', 'Female'),
('03', 'C', 20, 'Sri Lanka', 'Male'),
('04', 'D', 21, 'Bhutan', 'Female');

-- Display inserted data
SELECT * FROM Students;

-- ------------------------------------------------------
-- 🗑️ DELETE SPECIFIC RECORDS
-- ------------------------------------------------------

-- Delete the student whose age is 22
DELETE FROM Students
WHERE age = 22;

-- Final table view
SELECT * FROM Students;

-- ------------------------------------------------------
-- ✅ END OF SCRIPT
-- ------------------------------------------------------
