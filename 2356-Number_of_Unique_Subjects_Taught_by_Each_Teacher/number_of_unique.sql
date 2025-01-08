# 2356. Number of Unique Subjects Taught by Each Teacher

## Problem Description
Given a dataset containing information about teachers, the subjects they teach, and other related details, the objective is to calculate the number of unique subjects taught by each teacher.

This problem typically involves working with tabular data, such as SQL tables or DataFrames, and the solution includes aggregating and grouping data to compute unique counts.

---

## Input Structure
The input dataset is represented in tabular format with the following fields:

- **Teacher_ID**: A unique identifier for each teacher.
- **Teacher_Name**: The name of the teacher.
- **Subject**: The subject taught by the teacher.

Sample input:

| Teacher_ID | Teacher_Name | Subject      |
|------------|--------------|--------------|
| 1          | Alice        | Mathematics  |
| 2          | Bob          | Science      |
| 1          | Alice        | Physics      |
| 1          | Alice        | Mathematics  |

---

## Output
The output is a table showing the number of unique subjects taught by each teacher.

Sample output:

| Teacher_ID | Teacher_Name | Unique_Subject_Count |
|------------|--------------|-----------------------|
| 1          | Alice        | 2                     |
| 2          | Bob          | 1                     |

---

## Steps to Solve
1. **Load the Data**: Read the data from a CSV file, SQL table, or other sources into a DataFrame or database.
2. **Group Data by Teacher**: Use the `Teacher_ID` or `Teacher_Name` as the key for grouping the data.
3. **Count Unique Subjects**: For each teacher, count the number of distinct subjects they teach.
4. **Output the Results**: Generate a table or visualization showing the results.

---

## Tools and Technologies
This task can be implemented using:
- **SQL**: Use `GROUP BY` and `COUNT(DISTINCT ...)` for efficient computation.
- **Python**: Utilize libraries like `pandas` for data manipulation and aggregation.
- **Excel**: Use pivot tables and advanced filtering.
