# Project: Average Employee Experience per Project

## Description
This project calculates the average experience years of employees working on each project. It involves two tables, `Project` and `Employee`, where:
- The `Project` table contains information about the projects and the employees assigned to each project.
- The `Employee` table contains details about employees, including their experience in years.

The goal is to compute the average years of experience for employees assigned to each project and display the result rounded to two decimal places.

## Database Schema

### Project Table
| Column Name   | Type  | Description |
| ------------- | ----- | ----------- |
| `project_id`  | int   | Unique identifier for the project |
| `employee_id` | int   | Employee ID, foreign key to the Employee table |
| `(project_id, employee_id)` | Primary Key | Composite key |

### Employee Table
| Column Name      | Type     | Description |
| ---------------- | -------- | ----------- |
| `employee_id`    | int      | Unique identifier for the employee |
| `name`           | varchar  | Name of the employee |
| `experience_years` | int    | Number of years of experience of the employee |

## Problem Statement
Write an SQL query to calculate the average years of experience of all employees assigned to each project. The result should be rounded to two decimal places.
