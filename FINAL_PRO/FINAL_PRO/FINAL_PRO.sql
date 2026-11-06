
-- ============================================
-- UNIVERSITY DATABASE MANAGEMENT SYSTEM
-- ============================================

-- CREATE DATABASE

CREATE DATABASE IF NOT EXISTS university_project;

USE university_project;


-- ============================================
-- CREATE TABLES
-- ============================================

-- DEPARTMENTS TABLE

CREATE TABLE IF NOT EXISTS Departments_table (
    Department_ID INT PRIMARY KEY,
    Department_Name VARCHAR(50)
);


-- STUDENTS TABLE

CREATE TABLE IF NOT EXISTS Students_table (
    Student_ID INT PRIMARY KEY,
    First_Name VARCHAR(50),
    Last_Name VARCHAR(50),
    Email VARCHAR(100),
    Birth_Date DATE,
    Enrollment_Date DATE
);


-- COURSES TABLE

CREATE TABLE IF NOT EXISTS Courses_table (
    Course_ID INT PRIMARY KEY,
    Course_Name VARCHAR(100),
    Department_ID INT,
    Credits INT,
    FOREIGN KEY (Department_ID)
    REFERENCES Departments_table(Department_ID)
);


-- INSTRUCTORS TABLE

CREATE TABLE IF NOT EXISTS Instructors_table (
    Instructor_ID INT PRIMARY KEY,
    First_Name VARCHAR(50),
    Last_Name VARCHAR(50),
    Email VARCHAR(100),
    Department_ID INT,
    Salary DECIMAL(10,2),
    FOREIGN KEY (Department_ID)
    REFERENCES Departments_table(Department_ID)
);


-- ENROLLMENTS TABLE

CREATE TABLE IF NOT EXISTS Enrollments_table (
    Enrollment_ID INT PRIMARY KEY,
    Student_ID INT,
    Course_ID INT,
    Enrollment_Date DATE,
    FOREIGN KEY (Student_ID)
    REFERENCES Students_table(Student_ID),
    FOREIGN KEY (Course_ID)
    REFERENCES Courses_table(Course_ID)
);

DESC Departments_table;
DESC Students_table;
DESC Courses_table;
DESC Instructors_table;
DESC Enrollments_table;

-- ============================================
-- INSERT SAMPLE DATA
-- ============================================

-- DEPARTMENTS

INSERT INTO Departments_table VALUES
(1, 'Computer Science'),
(2, 'Mathematics');


-- STUDENTS

INSERT INTO Students_table VALUES
(1, 'John', 'Doe', 'john.doe@email.com', '2000-01-15', '2022-08-01'),
(2, 'Jane', 'Smith', 'jane.smith@email.com', '1999-05-25', '2021-08-01'),
(3, 'Rahul', 'Shah', 'rahul@email.com', '2001-03-12', '2023-07-01'),
(4, 'Priya', 'Patel', 'priya@email.com', '2002-06-20', '2023-08-01'),
(5, 'Amit', 'Verma', 'amit@email.com', '2000-09-10', '2024-01-01'),
(6, 'Neha', 'Joshi', 'neha@email.com', '2002-11-15', '2024-06-01');


-- COURSES

INSERT INTO Courses_table VALUES
(101, 'Introduction to SQL', 1, 3),
(102, 'Data Structures', 2, 4);


-- INSTRUCTORS

INSERT INTO Instructors_table VALUES
(1, 'Alice', 'Johnson', 'alice.johnson@univ.com', 1, 75000),
(2, 'Bob', 'Lee', 'bob.lee@univ.com', 2, 65000);


-- ENROLLMENTS

INSERT INTO Enrollments_table VALUES
(1, 1, 101, '2022-08-01'),
(2, 2, 102, '2021-08-01'),
(3, 1, 102, '2022-08-05'),
(4, 2, 101, '2021-08-05'),
(5, 3, 101, '2023-07-01'),
(6, 3, 102, '2023-07-05'),
(7, 4, 101, '2023-08-01'),
(8, 4, 102, '2023-08-05'),
(9, 5, 101, '2024-01-01'),
(10, 5, 102, '2024-01-05'),
(11, 6, 101, '2024-06-01'),
(12, 6, 102, '2024-06-05');


-- ============================================
-- CHECK ALL TABLES
-- ============================================

SHOW TABLES;

SELECT * FROM Departments_table;
SELECT * FROM Students_table;
SELECT * FROM Courses_table;
SELECT * FROM Instructors_table;
SELECT * FROM Enrollments_table;





-- ============================================
-- TOTAL 16 SQL QUERIES
-- ============================================


-- QUERY 1: CRUD Operations

USE university_project;


-- =====================================
-- 1. DEPARTMENTS_TABLE CRUD
-- =====================================

-- CREATE (INSERT)

INSERT INTO Departments_table
(Department_ID, Department_Name)
VALUES
(3, 'Information Technology');


-- READ (SELECT)

SELECT * FROM Departments_table;


-- UPDATE

UPDATE Departments_table
SET Department_Name = 'Data Science'
WHERE Department_ID = 3;


-- DELETE

DELETE FROM Departments_table
WHERE Department_ID = 3;



-- =====================================
-- 2. STUDENTS_TABLE CRUD
-- =====================================

-- CREATE (INSERT)

INSERT INTO Students_table
(Student_ID, First_Name, Last_Name, Email, Birth_Date, Enrollment_Date)
VALUES
(7, 'Karan', 'Mehta', 'karan@gmail.com', '2001-05-10', '2024-07-01');


-- READ (SELECT)

SELECT * FROM Students_table;


-- UPDATE

UPDATE Students_table
SET Email = 'karan.mehta@gmail.com'
WHERE Student_ID = 7;


-- DELETE

DELETE FROM Students_table
WHERE Student_ID = 7;



-- =====================================
-- 3. COURSES_TABLE CRUD
-- =====================================

-- CREATE (INSERT)

INSERT INTO Courses_table
(Course_ID, Course_Name, Department_ID, Credits)
VALUES
(103, 'Python Programming', 1, 4);


-- READ (SELECT)

SELECT * FROM Courses_table;


-- UPDATE

UPDATE Courses_table
SET Course_Name = 'Advanced Python'
WHERE Course_ID = 103;


-- DELETE

DELETE FROM Courses_table
WHERE Course_ID = 103;



-- =====================================
-- 4. INSTRUCTORS_TABLE CRUD
-- =====================================

-- CREATE (INSERT)

INSERT INTO Instructors_table
(Instructor_ID, First_Name, Last_Name, Email, Department_ID, Salary)
VALUES
(3, 'David', 'Miller', 'david@gmail.com', 1, 80000);


-- READ (SELECT)

SELECT * FROM Instructors_table;


-- UPDATE

UPDATE Instructors_table
SET Salary = 85000
WHERE Instructor_ID = 3;


-- DELETE

DELETE FROM Instructors_table
WHERE Instructor_ID = 3;



-- =====================================
-- 5. ENROLLMENTS_TABLE CRUD
-- =====================================

-- CREATE (INSERT)

INSERT INTO Enrollments_table
(Enrollment_ID, Student_ID, Course_ID, Enrollment_Date)
VALUES
(13, 1, 101, '2025-01-10');


-- READ (SELECT)

SELECT * FROM Enrollments_table;


-- UPDATE

UPDATE Enrollments_table
SET Enrollment_Date = '2025-02-10'
WHERE Enrollment_ID = 13;


-- DELETE

DELETE FROM Enrollments_table
WHERE Enrollment_ID = 13;


-- =====================================
-- CHECK ALL TABLES
-- =====================================

SELECT * FROM Departments_table;
SELECT * FROM Students_table;
SELECT * FROM Courses_table;
SELECT * FROM Instructors_table;
SELECT * FROM Enrollments_table;



-- QUERY 2: Students enrolled after 2022

SELECT *
FROM Students_table
WHERE Enrollment_Date > '2022-12-31';


-- QUERY 3: Courses offered by Mathematics
-- with LIMIT 5

SELECT *
FROM Courses_table
WHERE Department_ID = (
    SELECT Department_ID
    FROM Departments_table
    WHERE Department_Name = 'Mathematics'
)
LIMIT 5;


-- QUERY 4: Count students in each course
-- Show courses having more than 2 students

SELECT
    Course_ID,
    COUNT(Student_ID) AS Total_Students
FROM Enrollments_table
GROUP BY Course_ID
HAVING COUNT(Student_ID) > 2;


-- QUERY 5: Students enrolled in BOTH courses

SELECT
    s.Student_ID,
    s.First_Name,
    s.Last_Name
FROM Students_table s
JOIN Enrollments_table e
ON s.Student_ID = e.Student_ID
JOIN Courses_table c
ON e.Course_ID = c.Course_ID
WHERE c.Course_Name IN
('Introduction to SQL', 'Data Structures')
GROUP BY s.Student_ID, s.First_Name, s.Last_Name
HAVING COUNT(DISTINCT c.Course_ID) = 2;


-- QUERY 6: Students enrolled in EITHER course

SELECT DISTINCT
    s.Student_ID,
    s.First_Name,
    s.Last_Name
FROM Students_table s
JOIN Enrollments_table e
ON s.Student_ID = e.Student_ID
JOIN Courses_table c
ON e.Course_ID = c.Course_ID
WHERE c.Course_Name IN
('Introduction to SQL', 'Data Structures');


-- QUERY 7: Average course credits

SELECT AVG(Credits) AS Average_Credits
FROM Courses_table;


-- QUERY 8: Maximum instructor salary
-- in Computer Science

SELECT MAX(i.Salary) AS Maximum_Salary
FROM Instructors_table i
JOIN Departments_table d
ON i.Department_ID = d.Department_ID
WHERE d.Department_Name = 'Computer Science';


-- QUERY 9: Count students in each department

SELECT
    d.Department_Name,
    COUNT(DISTINCT e.Student_ID) AS Total_Students
FROM Departments_table d
JOIN Courses_table c
ON d.Department_ID = c.Department_ID
JOIN Enrollments_table e
ON c.Course_ID = e.Course_ID
GROUP BY d.Department_ID, d.Department_Name;


-- QUERY 10: INNER JOIN

SELECT
    s.Student_ID,
    s.First_Name,
    s.Last_Name,
    c.Course_Name
FROM Students_table s
INNER JOIN Enrollments_table e
ON s.Student_ID = e.Student_ID
INNER JOIN Courses_table c
ON e.Course_ID = c.Course_ID;


-- QUERY 11: LEFT JOIN

SELECT
    s.Student_ID,
    s.First_Name,
    s.Last_Name,
    c.Course_Name
FROM Students_table s
LEFT JOIN Enrollments_table e
ON s.Student_ID = e.Student_ID
LEFT JOIN Courses_table c
ON e.Course_ID = c.Course_ID;


-- QUERY 12: SUBQUERY
-- Students enrolled in courses having
-- more than 5 students

SELECT *
FROM Students_table
WHERE Student_ID IN (
    SELECT Student_ID
    FROM Enrollments_table
    WHERE Course_ID IN (
        SELECT Course_ID
        FROM Enrollments_table
        GROUP BY Course_ID
        HAVING COUNT(Student_ID) > 5
    )
);


-- QUERY 13: Extract YEAR from Enrollment Date

SELECT
    Student_ID,
    First_Name,
    Last_Name,
    YEAR(Enrollment_Date) AS Enrollment_Year
FROM Students_table;


-- QUERY 14: CONCAT instructor names

SELECT
    Instructor_ID,
    CONCAT(First_Name, ' ', Last_Name) AS Full_Name
FROM Instructors_table;


-- QUERY 15: Running Total

SELECT
    Enrollment_Date,
    COUNT(*) AS Daily_Enrollments,
    SUM(COUNT(*)) OVER (
        ORDER BY Enrollment_Date
    ) AS Running_Total
FROM Enrollments_table
GROUP BY Enrollment_Date
ORDER BY Enrollment_Date;


-- QUERY 16: CASE Statement

SELECT
    Student_ID,
    First_Name,
    Last_Name,
    Enrollment_Date,
    CASE
        WHEN Enrollment_Date < DATE_SUB(
            CURDATE(), INTERVAL 4 YEAR
        )
        THEN 'Senior'
        ELSE 'Junior'
    END AS Student_Status
FROM Students_table;

