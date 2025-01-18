# 550. Game Play Analysis IV

## Problem Description

A SQL problem where you are tasked to analyze game play data to find information about players who have had certain actions over consecutive days. The challenge requires using SQL queries to manipulate and analyze the given dataset.

### Table Schema

**Table Name:** `Activity`

| Column Name | Type    |
|-------------|---------|
| player_id   | int     |
| device_id   | int     |
| event_date  | date    |
| games_played| int     |

- `player_id` is the ID of the player.
- `device_id` is the ID of the device used by the player.
- `event_date` is the date when the player logged in.
- `games_played` is the number of games played by the player on the specified date.

You are tasked to write SQL queries based on this schema to solve the problem.

---

## Constraints

- The solution must be efficient and consider edge cases such as:
  - Players with no activity.
  - Multiple devices per player.
  - Continuous and non-continuous play dates.

---

## Example Input

### Input Table: `Activity`

| player_id | device_id | event_date | games_played |
|-----------|-----------|------------|--------------|
| 1         | 2         | 2025-01-01 | 5            |
| 1         | 2         | 2025-01-02 | 6            |
| 2         | 3         | 2025-01-01 | 10           |

### Output Example

| player_id | ... |
|-----------|-----|
| 1         | ... |

(Note: The actual output depends on the specific problem requirements.)

---

## Notes

1. Ensure that your SQL query handles edge cases such as:
   - Missing `games_played` values.
   - Overlapping play dates for the same player across different devices.
2. Test your query against a variety of input scenarios to confirm correctness.

---

## Tags

- SQL
- Data Analysis
- LeetCode
