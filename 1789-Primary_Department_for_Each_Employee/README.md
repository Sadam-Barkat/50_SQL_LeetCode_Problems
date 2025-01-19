# 1789. Primary Department for Each Employee

## Problem Statement
You are provided with two tables:

1. **Employees**:
    - `employee_id`: Unique identifier for each employee.
    - `employee_name`: Name of the employee.

2. **Departments**:
    - `employee_id`: Unique identifier of the employee (foreign key linking to the `Employees` table).
    - `department_name`: Name of the department the employee is associated with.

An employee may belong to multiple departments. Your task is to write a query to determine the primary department for each employee. The primary department is defined as the lexicographically smallest department name associated with an employee.

## Input Schema
### Table: Employees
| Column Name     | Type    |
|-----------------|---------|
| employee_id     | INTEGER |
| employee_name   | VARCHAR |

### Table: Departments
| Column Name     | Type    |
|-----------------|---------|
| employee_id     | INTEGER |
| department_name | VARCHAR |

## Output Schema
The output should return the following columns:

| Column Name     | Type    |
|-----------------|---------|
| employee_id     | INTEGER |
| employee_name   | VARCHAR |
| department_name | VARCHAR |

- `employee_id`: The unique identifier of the employee.
- `employee_name`: The name of the employee.
- `department_name`: The primary department name of the employee (lexicographically smallest).

## Example
### Input
#### Employees Table
| employee_id | employee_name |
|-------------|---------------|
| 1           | Alice         |
| 2           | Bob           |
| 3           | Charlie       |

#### Departments Table
| employee_id | department_name |
|-------------|-----------------|
| 1           | HR              |
| 1           | Finance         |
| 2           | IT              |
| 3           | HR              |
| 3           | IT              |

### Output
| employee_id | employee_name | department_name |
|-------------|---------------|-----------------|
| 1           | Alice         | Finance         |
| 2           | Bob           | IT              |
| 3           | Charlie       | HR              |

## Explanation
- Employee `Alice` is associated with `HR` and `Finance`. The lexicographically smallest department is `Finance`.
- Employee `Bob` is associated with only `IT`.
- Employee `Charlie` is associated with `HR` and `IT`. The lexicographically smallest department is `HR`.

## Solution Approach
The solution involves the following steps:
1. Use a query to join the `Employees` table with the `Departments` table on `employee_id`.
2. Group the results by `employee_id` and select the smallest `department_name` for each employee.
3. Combine the grouped results with the `Employees` table to fetch the `employee_name`.


