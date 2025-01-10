# Classes More Than 5 Students

## Problem Description
Write an SQL query to find all classes that have more than 5 students. The `Student` table contains the following columns:

- `student_id` (int): The ID of the student.
- `class` (varchar): The name of the class the student is attending.

Return a result table with a single column:

- `class` (varchar): The name of the class with more than 5 students.

### Example
**Input Table: `Student`**
| student_id | class     |
|------------|-----------|
| 1          | Math      |
| 2          | English   |
| 3          | Math      |
| 4          | Biology   |
| 5          | Math      |
| 6          | Math      |
| 7          | English   |

**Output:**
| class  |
|--------|
| Math   |

### Explanation:
- "Math" has 4 students, which is more than 5.

## Constraints
- The `student_id` column is unique for each student.
- There are no duplicate rows in the `Student` table.
- Classes with exactly 5 students should not be included in the output.

## Tags
- SQL
- Database
- Aggregation
