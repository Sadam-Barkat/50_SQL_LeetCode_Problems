# SQL Query for Query Performance Analysis

## Overview
This SQL script analyzes query performance from the `Queries` table by calculating two metrics for each query:
1. **Quality**: A score representing the effectiveness of the query, derived from the average of `rating / position`.
2. **Poor Query Percentage**: The percentage of query results with a rating below 3.

The final output provides a table of `query_name`, `quality`, and `poor_query_percentage` rounded to two decimal places.

---

## Input Table Structure

The `Queries` table contains the following columns:
- **query_name**: The name of the query.
- **result**: The query's result (string).
- **position**: The position of the result in the list.
- **rating**: The rating of the result (integer).

Example:
| query_name | result                    | position | rating |
|------------|---------------------------|----------|--------|
| pdxafib    | jwqjgyrnhaptivvnqkj       | 16       | 5      |
| mpzkxkzb   | srlfyprermbgldweweul      | 10       | 1      |

---

## Query Logic

### Step 1: Define Metrics
The query calculates:
- **Quality**:  
  \[
  \text{Quality} = \frac{\text{SUM}( \text{rating} / \text{position} )}{\text{COUNT}(*)}
  \]
  
- **Poor Query Percentage**:  
  \[
  \text{Poor Query Percentage} = \frac{\text{SUM}( \text{CASE WHEN rating < 3 THEN 1 ELSE 0 END} )}{\text{COUNT}(*)} \times 100
  \]

### Step 2: Group Data
Group results by `query_name` to compute these metrics per query.

### Step 3: Round Results
Round the calculated values for clarity in the final output.

---


