# 1280. Students and Examinations

## Problem Description

Write a SQL query to find the number of times each student attended each exam. The result should include all students and all subjects, even if a student did not attend an exam for a particular subject.

The result table should include the following columns:
- `student_id`: The ID of the student.
- `student_name`: The name of the student.
- `subject_name`: The name of the subject.
- `attended_exams`: The number of times the student attended an exam for the subject.

The result should be ordered by `student_id` and `subject_name`.

## Table Descriptions

### Students Table

| Column Name   | Type    |
|---------------|---------|
| student_id    | int     |
| student_name  | varchar |

- `student_id` is the primary key for this table.
- Each row represents one student.

### Subjects Table

| Column Name   | Type    |
|---------------|---------|
| subject_name  | varchar |

- `subject_name` is the primary key for this table.
- Each row represents one subject.

### Examinations Table

| Column Name   | Type    |
|---------------|---------|
| student_id    | int     |
| subject_name  | varchar |

- This table does not have a primary key and may contain duplicates.
- Each row represents an instance where a student attended an exam for a specific subject.

## Output

The output should have the following format:

| student_id | student_name | subject_name | attended_exams |
|------------|--------------|--------------|----------------|
| int        | varchar      | varchar      | int            |

The `attended_exams` column shows the number of times the student attended an exam for the subject. If a student did not attend an exam for a subject, the count should be `0`.

## Example Input

### Students Table

| student_id | student_name |
|------------|--------------|
| 1          | Alice        |
| 2          | Bob          |
| 13         | John         |
| 6          | Alex         |

### Subjects Table

| subject_name |
|--------------|
| Math         |
| Physics      |
| Programming  |

### Examinations Table

| student_id | subject_name |
|------------|--------------|
| 1          | Math         |
| 1          | Physics      |
| 1          | Programming  |
| 2          | Programming  |
| 1          | Physics      |
| 1          | Math         |
| 13         | Math         |
| 13         | Programming  |
| 13         | Physics      |
| 2          | Math         |
| 1          | Math         |

## Example Output

| student_id | student_name | subject_name | attended_exams |
|------------|--------------|--------------|----------------|
| 1          | Alice        | Math         | 3              |
| 1          | Alice        | Physics      | 2              |
| 1          | Alice        | Programming  | 1              |
| 2          | Bob          | Math         | 1              |
| 2          | Bob          | Physics      | 0              |
| 2          | Bob          | Programming  | 1              |
| 6          | Alex         | Math         | 0              |
| 6          | Alex         | Physics      | 0              |
| 6          | Alex         | Programming  | 0              |
| 13         | John         | Math         | 1              |
| 13         | John         | Physics      | 1              |
| 13         | John         | Programming  | 1              |

## Constraints

- Each `student_id` in the `Students` table is unique.
- Each `subject_name` in the `Subjects` table is unique.
- There may be duplicate entries in the `Examinations` table.

## Notes

- Use `CROSS JOIN` to generate all possible combinations of students and subjects.
- Use `LEFT JOIN` to include exam data, even if no exams were attended for a subject.
- Use `COUNT` to calculate the number of exams attended for each student-subject combination.
