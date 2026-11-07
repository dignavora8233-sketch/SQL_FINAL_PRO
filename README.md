# 🎓 UNIVERSITY DATABASE MANAGEMENT SYSTEM


## 📌 About the Project

The **University Database Management System** is a SQL-based database
project developed to manage and organize university-related information
in a structured way. The database stores details about departments,
students, courses, instructors, and student enrollments.

The main purpose of this project is to understand how a relational
database works and how different tables can be connected using primary
keys and foreign keys. It also demonstrates how SQL commands can be used
to insert, display, update, delete, and analyze data.

This project includes database creation, table creation, sample data
insertion, table relationships, CRUD operations, and 16 numbered SQL
query sections. These queries cover filtering, grouping, aggregate
functions, joins, subqueries, date functions, string functions, window
functions, and conditional statements.

It is designed as a practical learning project to strengthen SQL and
MySQL database management skills.

------------------------------------------------------------------------

## 🎯 Project Objectives

The main objectives of this project are:

-   To create a database for managing university information.
-   To store student information in a structured format.
-   To maintain department details.
-   To store course information and credit details.
-   To maintain instructor information and salary details.
-   To connect related tables using primary keys and foreign keys.
-   To perform Create, Read, Update, and Delete operations.
-   To retrieve specific information using SQL queries.
-   To understand the use of different SQL clauses and functions.
-   To practice relational database management using MySQL.

------------------------------------------------------------------------

## 🛠️ Technologies Used

  -----------------------------------------------------------------------
  Technology                          Description
  ----------------------------------- -----------------------------------
  MySQL                               Relational database management
                                      system

  SQL                                 Language used to create, manage,
                                      and retrieve database information

  MySQL Workbench / MySQL-compatible  Used to execute SQL statements and
  environment                         view results
  -----------------------------------------------------------------------

### SQL Concepts Used

-   DDL -- Data Definition Language
-   DML -- Data Manipulation Language
-   DQL -- Data Query Language
-   Primary Key
-   Foreign Key
-   CRUD Operations
-   Aggregate Functions
-   Joins
-   Subqueries
-   Date Functions
-   String Functions
-   Window Functions
-   CASE Statement

------------------------------------------------------------------------

## 🗂️ Database Information

  Property                            Details
  ----------------------------------- ---------------------------------------
  Project Name                        University Database Management System
  Database Name                       `university_project`
  Database Type                       Relational Database
  DBMS                                MySQL
  Number of Tables                    5
  Number of Numbered Query Sections   16

The database is created with the following SQL commands:

``` sql
CREATE DATABASE IF NOT EXISTS university_project;

USE university_project;
```

------------------------------------------------------------------------

## 📚 Database Tables

The project contains five main tables. Each table is responsible for
storing a particular type of university information.

### 1. Departments_table

This table stores the department details available in the university.

  Column Name       Data Type     Description
  ----------------- ------------- --------------------------------------
  Department_ID     INT           Unique department ID and primary key
  Department_Name   VARCHAR(50)   Name of the department

### 2. Students_table

This table stores personal and enrollment-related information of
students.

  Column Name       Data Type      Description
  ----------------- -------------- -----------------------------------
  Student_ID        INT            Unique student ID and primary key
  First_Name        VARCHAR(50)    Student's first name
  Last_Name         VARCHAR(50)    Student's last name
  Email             VARCHAR(100)   Student's email address
  Birth_Date        DATE           Student's date of birth
  Enrollment_Date   DATE           Student's enrollment date

### 3. Courses_table

This table stores course information and connects each course to a
department.

  Column Name     Data Type      Description
  --------------- -------------- --------------------------------------
  Course_ID       INT            Unique course ID and primary key
  Course_Name     VARCHAR(100)   Name of the course
  Department_ID   INT            Department reference and foreign key
  Credits         INT            Credit value of the course

### 4. Instructors_table

This table stores instructor details, department information, and
salary.

  Column Name     Data Type       Description
  --------------- --------------- --------------------------------------
  Instructor_ID   INT             Unique instructor ID and primary key
  First_Name      VARCHAR(50)     Instructor's first name
  Last_Name       VARCHAR(50)     Instructor's last name
  Email           VARCHAR(100)    Instructor's email address
  Department_ID   INT             Department reference and foreign key
  Salary          DECIMAL(10,2)   Instructor's salary

### 5. Enrollments_table

This table stores student-course enrollment records. It connects
students and courses.

  Column Name       Data Type   Description
  ----------------- ----------- --------------------------------------
  Enrollment_ID     INT         Unique enrollment ID and primary key
  Student_ID        INT         Student reference and foreign key
  Course_ID         INT         Course reference and foreign key
  Enrollment_Date   DATE        Date of enrollment

------------------------------------------------------------------------

## 🔗 Database Relationships

The tables are connected using foreign-key relationships.

  ---------------------------------------------------------------------------
  Main Table          Referenced Column Related Table       Foreign Key
  ------------------- ----------------- ------------------- -----------------
  Departments_table   Department_ID     Courses_table       Department_ID

  Departments_table   Department_ID     Instructors_table   Department_ID

  Students_table      Student_ID        Enrollments_table   Student_ID

  Courses_table       Course_ID         Enrollments_table   Course_ID
  ---------------------------------------------------------------------------

### Explanation

1.  **Departments and Courses:** A course contains a `Department_ID`
    that refers to the department in `Departments_table`.
2.  **Departments and Instructors:** An instructor contains a
    `Department_ID` that refers to the instructor's department.
3.  **Students and Enrollments:** An enrollment contains a `Student_ID`
    that identifies the student.
4.  **Courses and Enrollments:** An enrollment contains a `Course_ID`
    that identifies the selected course.

### Primary Key

A primary key uniquely identifies every record in a table. For example,
`Student_ID` identifies each student.

### Foreign Key

A foreign key creates a relationship between two tables. For example,
`Student_ID` in `Enrollments_table` references `Student_ID` in
`Students_table`.

------------------------------------------------------------------------

## 📊 Sample Data Included

The SQL script inserts sample records into all five tables.

  Table                 Number of Sample Records
  ------------------- --------------------------
  Departments_table                            2
  Students_table                               6
  Courses_table                                2
  Instructors_table                            2
  Enrollments_table                           12
  **Total**                               **24**

### Sample Departments

-   Computer Science
-   Mathematics

### Sample Courses

-   Introduction to SQL
-   Data Structures

The student and instructor tables also contain sample names, email
addresses, dates, department references, and salary information. The
enrollment table connects the sample students with the available
courses.

------------------------------------------------------------------------

## ⚙️ Project Implementation

The project is organized into the following stages.

### Stage 1: Database Creation

The database is created using `CREATE DATABASE IF NOT EXISTS`. The `USE`
statement selects the database in which the tables will be created.

### Stage 2: Table Creation

Five tables are created:

1.  `Departments_table`
2.  `Students_table`
3.  `Courses_table`
4.  `Instructors_table`
5.  `Enrollments_table`

The tables use suitable SQL data types such as `INT`, `VARCHAR`, `DATE`,
and `DECIMAL(10,2)`.

### Stage 3: Defining Keys

Primary keys are used to identify records uniquely. Foreign keys are
used to connect the related tables and maintain referential
relationships.

### Stage 4: Inserting Sample Records

The `INSERT INTO` statement is used to add sample data to the five
tables.

### Stage 5: Checking Table Structure and Records

The project uses:

``` sql
SHOW TABLES;

DESC Departments_table;
DESC Students_table;
DESC Courses_table;
DESC Instructors_table;
DESC Enrollments_table;
```

The following statements display table records:

``` sql
SELECT * FROM Departments_table;
SELECT * FROM Students_table;
SELECT * FROM Courses_table;
SELECT * FROM Instructors_table;
SELECT * FROM Enrollments_table;
```

### Stage 6: Performing CRUD Operations

CRUD operations are demonstrated for every table.

  Operation   SQL Command     Purpose
  ----------- --------------- --------------------------
  Create      `INSERT INTO`   Adds a new record
  Read        `SELECT`        Displays records
  Update      `UPDATE`        Changes existing records
  Delete      `DELETE`        Removes records

### Stage 7: Executing SQL Queries

The project includes 16 numbered query sections to retrieve and analyze
information from the university database.

------------------------------------------------------------------------

## 🧾 CRUD Operations Explained

CRUD represents the four basic operations used to manage database
records.

### 1. CREATE

The `INSERT INTO` command adds a new record to a table.

``` sql
INSERT INTO Departments_table
(Department_ID, Department_Name)
VALUES
(3, 'Information Technology');
```

### 2. READ

The `SELECT` command retrieves information from a table.

``` sql
SELECT * FROM Departments_table;
```

### 3. UPDATE

The `UPDATE` command modifies an existing record. The `WHERE` condition
identifies the record to change.

``` sql
UPDATE Departments_table
SET Department_Name = 'Data Science'
WHERE Department_ID = 3;
```

### 4. DELETE

The `DELETE` command removes a record that matches the specified
condition.

``` sql
DELETE FROM Departments_table
WHERE Department_ID = 3;
```

The SQL script demonstrates these operations for Departments, Students,
Courses, Instructors, and Enrollments.

------------------------------------------------------------------------

## 🔍 SQL Queries Included

The project contains 16 numbered query sections. The first section
demonstrates CRUD operations across the five tables. The remaining 15
sections demonstrate different SQL querying concepts.

  ------------------------------------------------------------------------
                     Query No. Query Description     SQL Concepts
  ---------------------------- --------------------- ---------------------
                             1 CRUD operations for   INSERT, SELECT,
                               all five tables       UPDATE, DELETE

                             2 Find students         WHERE, comparison
                               enrolled after 2022   operator

                             3 Find courses offered  Subquery, WHERE,
                               by Mathematics, with  LIMIT
                               a maximum of 5        
                               results               

                             4 Count students in     COUNT, GROUP BY,
                               each course and show  HAVING
                               courses with more     
                               than 2 students       

                             5 Find students         JOIN, IN, GROUP BY,
                               enrolled in both      HAVING, DISTINCT
                               specified courses     

                             6 Find students         DISTINCT, JOIN, IN
                               enrolled in either    
                               specified course      

                             7 Calculate average     AVG
                               course credits        

                             8 Find maximum          MAX, JOIN, WHERE
                               instructor salary in  
                               Computer Science      

                             9 Count students in     COUNT, DISTINCT,
                               each department       JOIN, GROUP BY

                            10 Display student and   INNER JOIN
                               course information    
                               using INNER JOIN      

                            11 Display student       LEFT JOIN
                               information with      
                               course details using  
                               LEFT JOIN             

                            12 Find students         Nested Subquery, IN,
                               enrolled in courses   GROUP BY, HAVING
                               having more than 5    
                               students              

                            13 Extract the           YEAR
                               enrollment year from  
                               the enrollment date   

                            14 Combine instructor    CONCAT
                               first and last names  

                            15 Calculate running     COUNT, SUM, OVER,
                               enrollment totals by  ORDER BY
                               date                  

                            16 Categorize students   CASE, WHEN, THEN,
                               as Senior or Junior   ELSE
  ------------------------------------------------------------------------

### Query 2: Students Enrolled After 2022

This query retrieves students whose enrollment date is later than
December 31, 2022.

``` sql
SELECT *
FROM Students_table
WHERE Enrollment_Date > '2022-12-31';
```

### Query 3: Courses Offered by Mathematics

This query uses a subquery to find the Mathematics department ID and
retrieves its courses. `LIMIT 5` restricts the result to a maximum of
five rows.

``` sql
SELECT *
FROM Courses_table
WHERE Department_ID = (
    SELECT Department_ID
    FROM Departments_table
    WHERE Department_Name = 'Mathematics'
)
LIMIT 5;
```

### Query 4: Count Students in Each Course

This query groups enrollment records by course and displays courses
having more than two student enrollments.

``` sql
SELECT
    Course_ID,
    COUNT(Student_ID) AS Total_Students
FROM Enrollments_table
GROUP BY Course_ID
HAVING COUNT(Student_ID) > 2;
```

### Query 5: Students Enrolled in Both Courses

This query finds students enrolled in both Introduction to SQL and Data
Structures.

``` sql
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
```

### Query 6: Students Enrolled in Either Course

This query retrieves students enrolled in at least one of the two
specified courses.

``` sql
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
```

### Query 7: Average Course Credits

The `AVG()` function calculates the average credit value of all courses.

``` sql
SELECT AVG(Credits) AS Average_Credits
FROM Courses_table;
```

Explanation Video:

https://drive.google.com/file/d/1cjzPpErFkeUw1wpqM956AibbvdHtooof/view?usp=sharing


### Query 8: Maximum Instructor Salary

This query uses `MAX()` and `JOIN` to find the maximum instructor salary
in the Computer Science department.

``` sql
SELECT MAX(i.Salary) AS Maximum_Salary
FROM Instructors_table i
JOIN Departments_table d
ON i.Department_ID = d.Department_ID
WHERE d.Department_Name = 'Computer Science';
```

### Query 9: Count Students in Each Department

This query counts the distinct students enrolled in courses belonging to
each department.

``` sql
SELECT
    d.Department_Name,
    COUNT(DISTINCT e.Student_ID) AS Total_Students
FROM Departments_table d
JOIN Courses_table c
ON d.Department_ID = c.Department_ID
JOIN Enrollments_table e
ON c.Course_ID = e.Course_ID
GROUP BY d.Department_ID, d.Department_Name;
```

### Query 10: INNER JOIN

This query displays student IDs, names, and their associated course
names.

``` sql
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
```

### Query 11: LEFT JOIN

This query displays all students and their course information where
available.

``` sql
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
```

### Query 12: Nested Subquery

This query finds students enrolled in courses that have more than five
enrollment records.

``` sql
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
```

### Query 13: Extract Enrollment Year

The `YEAR()` function extracts the year from each student's enrollment
date.

``` sql
SELECT
    Student_ID,
    First_Name,
    Last_Name,
    YEAR(Enrollment_Date) AS Enrollment_Year
FROM Students_table;
```

### Query 14: CONCAT Instructor Names

The `CONCAT()` function combines the first name and last name into one
full-name column.

``` sql
SELECT
    Instructor_ID,
    CONCAT(First_Name, ' ', Last_Name) AS Full_Name
FROM Instructors_table;
```

### Query 15: Running Total

This query calculates daily enrollments and a cumulative running total
using a window function.

``` sql
SELECT
    Enrollment_Date,
    COUNT(*) AS Daily_Enrollments,
    SUM(COUNT(*)) OVER (
        ORDER BY Enrollment_Date
    ) AS Running_Total
FROM Enrollments_table
GROUP BY Enrollment_Date
ORDER BY Enrollment_Date;
```

### Query 16: CASE Statement

This query uses the `CASE` statement to classify students based on their
enrollment date. Students enrolled before the date four years prior to
the current date are categorized as Senior; the remaining students are
categorized as Junior.

``` sql
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
```

------------------------------------------------------------------------

## ▶️ How to Run the Project

Follow these steps to execute the SQL project:

1.  Install MySQL or open an available MySQL-compatible SQL environment.
2.  Open MySQL Workbench or your SQL editor.
3.  Create a new SQL script.
4.  Copy the SQL project code into the script.
5.  Execute the database creation statement.
6.  Select the database using the `USE university_project;` command.
7.  Execute all five `CREATE TABLE` statements.
8.  Insert the sample data into the tables.
9.  Run `SHOW TABLES;` to check that the tables have been created.
10. Use `DESC table_name;` to inspect each table's structure.
11. Execute the `SELECT` statements to view the inserted records.
12. Run the CRUD operations and the remaining numbered queries.
13. Check the output of each query in your SQL editor.

**Important:** Run the table creation statements before inserting
records. The referenced parent tables must exist before creating tables
that use their foreign keys. Insert parent-table records before
inserting dependent records.

------------------------------------------------------------------------

## 📁 Suggested Project Folder Structure

``` text
University-Database-Management-System/
│
├── university_project.sql
│
└── README.md
```

-   `university_project.sql` contains the complete SQL script.
-   `README.md` contains the project documentation and explanation.

------------------------------------------------------------------------

## 💡 Key Learning Outcomes

By completing this project, I practiced:

-   Creating a relational database using MySQL.
-   Designing tables with suitable data types.
-   Understanding primary-key and foreign-key constraints.
-   Establishing relationships between multiple tables.
-   Inserting and managing sample records.
-   Performing CRUD operations on different tables.
-   Filtering records using `WHERE`.
-   Grouping records using `GROUP BY`.
-   Filtering grouped results using `HAVING`.
-   Applying aggregate functions such as `COUNT()`, `AVG()`, and
    `MAX()`.
-   Retrieving related information using `INNER JOIN` and `LEFT JOIN`.
-   Writing subqueries and nested subqueries.
-   Working with date and string functions.
-   Using window functions to calculate running totals.
-   Applying conditional logic through the `CASE` statement.

This project helped me understand how SQL can be used to organize,
manage, connect, and retrieve information from a relational database.

------------------------------------------------------------------------

## 🔮 Future Improvements

The current project demonstrates the five tables and query operations
included in the SQL script. Possible future improvements could include:

-   Adding more departments, students, courses, and instructors.
-   Adding marks or examination information.
-   Creating a user interface to interact with the database.
-   Developing reports for student enrollment and course information.
-   Adding more SQL queries for deeper data analysis.

These are possible extensions and are not included in the current SQL
script.

------------------------------------------------------------------------

## 🙌 Acknowledgement

This project was created as part of my SQL and database learning
journey. It provided practical experience with MySQL, relational
database design, table relationships, CRUD operations, and SQL queries.

I would like to thank my teachers and learning resources for helping me
understand database concepts and practice SQL.

------------------------------------------------------------------------

## 👩‍💻 Author

**Digna Vora**

B.Sc. IT -- Semester 1

**Area of Learning:** SQL \| MySQL \| Database Management

------------------------------------------------------------------------

## ⭐ Support

If you find this project useful for learning SQL and database
management, feel free to explore the SQL script and practice the
queries.

**Thank you for visiting my project!** 💙

------------------------------------------------------------------------

```{=html}
<p align="center">
```
Made with ❤️ while learning SQL and MySQL
```{=html}
</p>
```
